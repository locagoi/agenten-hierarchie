#!/usr/bin/env bash
# Legt eine neue Aufgabe an: Datei in ops/tasks/ aus der Vorlage plus Zeile auf ops/board.md.
#
# Nutzung:
#   ops/scripts/neue-aufgabe.sh <kurzname> <owner> <pruefer> [frist JJJJ-MM-TT] [pruefdatum JJJJ-MM-TT] ["Beschreibung"]
# Beispiel:
#   ops/scripts/neue-aufgabe.sh placement-b outbound-zustellung kontrolle-review 2026-11-15 2026-11-22 "Placement-Test Variante B"
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
BOARD="$ROOT/ops/board.md"
VORLAGE="$ROOT/ops/tasks/VORLAGE.md"
AGENTS="$ROOT/.claude/agents"

if [ $# -lt 3 ]; then
  sed -n '2,7p' "$0" | sed 's/^# \{0,1\}//'
  exit 1
fi

name="$1"; owner="$2"; pruefer="$3"
frist="${4:-}"; pruefdatum="${5:-}"; beschreibung="${6:-$name}"

if ! printf '%s' "$name" | grep -Eq '^[a-z0-9-]+$'; then
  echo "Fehler: Kurzname nur aus Kleinbuchstaben, Ziffern und Bindestrich." >&2; exit 1
fi
for a in "$owner" "$pruefer"; do
  if [ ! -f "$AGENTS/$a.md" ]; then
    echo "Fehler: Agent '$a' gibt es nicht in .claude/agents/." >&2; exit 1
  fi
done
if [ "$owner" = "$pruefer" ]; then
  echo "Fehler: Owner und Prüfer müssen verschieden sein. Niemand prüft sich selbst." >&2; exit 1
fi
if [ "$beschreibung" != "${beschreibung//|/}" ]; then
  echo "Fehler: Die Beschreibung darf kein '|' enthalten (Tabellentrenner)." >&2; exit 1
fi

datum="$(date +%F)"
datei="ops/tasks/$datum-$name.md"
if [ -e "$ROOT/$datei" ]; then
  echo "Fehler: $datei gibt es schon." >&2; exit 1
fi

# Nächste ID: höchste dreistellige ID in der ersten Spalte plus eins.
letzte="$(awk -F'|' '/^\| *[0-9]+ *\|/ { gsub(/ /, "", $2); if ($2 + 0 > max) max = $2 + 0 } END { print max + 0 }' "$BOARD")"
id="$(printf '%03d' $((10#$letzte + 1)))"

sed -e "s/^# Aufgabe: <Kurzname>/# Aufgabe: $name ($id)/" \
    -e "s/^Status: neu · Owner: <agent> · Prüfer: <anderer agent> · Frist: <Datum> · Prüfdatum: <Datum>/Status: neu · Owner: $owner · Prüfer: $pruefer · Frist: ${frist:-offen} · Prüfdatum: ${pruefdatum:-offen}/" \
    -e "s/^<was genau, Ergebnisformat>/$beschreibung/" \
    "$VORLAGE" > "$ROOT/$datei"

printf '| %s | %s | %s | %s | neu | %s | %s | %s |\n' \
  "$id" "$beschreibung" "$owner" "$pruefer" "$frist" "$pruefdatum" "$datei" >> "$BOARD"

echo "Angelegt: $id · $datei · Owner $owner · Prüfer $pruefer"
