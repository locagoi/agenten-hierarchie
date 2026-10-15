#!/usr/bin/env bash
# Zeigt den Stand des Boards: Anzahl je Status, wartet auf Mensch, überfällige Fristen,
# fällige Prüfdaten und Aufgaben, deren Datei seit mehr als 48 Stunden unverändert ist.
#
# Nutzung:
#   ops/scripts/board-status.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
BOARD="$ROOT/ops/board.md"
heute="$(date +%F)"
jetzt="$(date +%s)"

# Zeilen der Tabelle: | ID | Aufgabe | Owner | Prüfer | Status | Frist | Prüfdatum | Datei |
zeilen() { awk -F'|' '/^\| *[0-9]+ *\|/' "$BOARD"; }
feld() { awk -F'|' -v n="$1" '{ s = $n; gsub(/^ +| +$/, "", s); print s }'; }

echo "Board $heute"
echo
echo "Status:"
zeilen | feld 6 | sort | uniq -c | sort -rn | awk '{ printf "  %-20s %s\n", $2, $1 }'

echo
echo "Wartet auf Mensch:"
zeilen | awk -F'|' '{ for (i = 2; i <= 9; i++) gsub(/^ +| +$/, "", $i) } $6 == "wartet-auf-mensch" { printf "  %s %s (%s)\n", $2, $3, $4 }' || true

echo
echo "Frist überschritten (nicht fertig):"
zeilen | awk -F'|' -v h="$heute" '{ for (i = 2; i <= 9; i++) gsub(/^ +| +$/, "", $i) }
  $7 ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ && $7 < h && $6 !~ /^(fertig|gemessen)$/ { printf "  %s %s · Frist %s · %s\n", $2, $3, $7, $4 }'

echo
echo "Prüfdatum erreicht (fertig, noch nicht gemessen):"
zeilen | awk -F'|' -v h="$heute" '{ for (i = 2; i <= 9; i++) gsub(/^ +| +$/, "", $i) }
  $8 ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ && $8 <= h && $6 == "fertig" { printf "  %s %s · Prüfdatum %s\n", $2, $3, $8 }'

echo
echo "Hänger (in-arbeit, Datei seit über 48 h unverändert):"
zeilen | awk -F'|' '{ for (i = 2; i <= 9; i++) gsub(/^ +| +$/, "", $i) } $6 == "in-arbeit" { print $2 "|" $3 "|" $4 "|" $9 }' |
while IFS='|' read -r id aufgabe owner datei; do
  pfad="$ROOT/$datei"
  [ -f "$pfad" ] || { echo "  $id $aufgabe · Datei fehlt: $datei"; continue; }
  mtime="$(stat -c %Y "$pfad" 2>/dev/null || stat -f %m "$pfad")"
  stunden=$(( (jetzt - mtime) / 3600 ))
  [ "$stunden" -gt 48 ] && echo "  $id $aufgabe · $owner · seit ${stunden} h"
done || true
