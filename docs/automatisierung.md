# Automatisierung: Agenten laufen ohne dich

Claude Code läuft auch ohne Oberfläche: `claude -p "<Auftrag>"` arbeitet einen Auftrag ab und beendet sich. Mit cron wird daraus ein Rhythmus. Welcher Agent wann läuft, steht in `docs/rhythmus.md`.

## Voraussetzungen
1. Claude Code ist installiert und angemeldet (`claude` einmal interaktiv starten).
2. `/einrichten` ist gelaufen, `firma/` ist gefüllt.
3. Ein Rechner, der durchläuft (Server, Mini-PC, VM). Ein Laptop im Ruhezustand verpasst Läufe.
4. Logs gehen nach `ops/logs/`. Der Health-Check liest sie.

## Berechtigungen ohne Rückfrage

Ohne Oberfläche kann niemand "Erlauben" klicken. Darum jedem Lauf genau die Werkzeuge geben, die er braucht, nicht mehr:

```bash
claude -p "/health-check" --agent kontrolle-health \
  --allowedTools "Read,Grep,Glob,Write,Edit,Bash(ops/scripts/board-status.sh)" \
  --max-turns 20
```

- `--allowedTools` begrenzt, was der Lauf darf. Kein `Bash` ohne Einschränkung für geplante Läufe. Warum: Ein geplanter Lauf mit freier Shell kann alles, was du kannst, und niemand schaut zu.
- `--max-turns` begrenzt die Schritte. Warum: Ein Lauf, der sich festfährt, verbraucht sonst bis zum Limit.
- Senden, Kaufen und Löschen gibt es in geplanten Läufen nicht. Die Werkzeuge dafür stehen in keiner `--allowedTools`-Liste. Entwürfe ja, Versand nein.

## Cron-Beispiele

`crontab -e`, Pfad anpassen. In cron muss `%` als `\%` geschrieben werden.

```cron
# Pfad zum Repo und zu claude
REPO=/pfad/zu/agenten-hierarchie
PATH=/usr/local/bin:/usr/bin:/bin:/pfad/zu/claude-verzeichnis

# Health-Check alle 2 Stunden, werktags 7 bis 19 Uhr
0 7-19/2 * * 1-5  cd $REPO && flock -n /tmp/agenten-health.lock claude -p "/health-check" --agent kontrolle-health --model haiku --max-turns 20 --allowedTools "Read,Grep,Glob,Write,Edit,Bash(ops/scripts/board-status.sh)" >> ops/logs/health-cron.log 2>&1

# Morgen-Briefing 7:30, werktags
30 7 * * 1-5  cd $REPO && claude -p "/morgen-briefing" --max-turns 30 --allowedTools "Read,Grep,Glob,Bash(ops/scripts/board-status.sh)" > ops/logs/briefing-$(date +\%F).md 2>> ops/logs/briefing-fehler.log

# Deal-Alarm 7:00, werktags (braucht CRM-Anbindung, sonst nur Board und Notizen)
0 7 * * 1-5  cd $REPO && claude -p "/deal-alarm" --agent sales-deal-alarm --max-turns 30 >> ops/logs/deal-alarm.log 2>&1

# Freitag 16 Uhr: Wochenrückblick, wiederholte Korrekturen werden Regeln
0 16 * * 5  cd $REPO && claude -p "/ergebnis-bewerten Woche" --max-turns 40 >> ops/logs/rueckblick.log 2>&1
```

- `flock -n` verhindert, dass ein Lauf startet, solange der vorige noch arbeitet.
- `--model haiku` für Prüfläufe, Standardmodell für Briefing und Entwürfe. Warum: Prüfläufe brauchen keine Schreibqualität, und sie laufen am häufigsten.
- Das Briefing landet als Datei. Willst du es aufs Handy, hängst du einen Versand an (Mail an dich selbst, Chat-Webhook). Das ist der einzige Versand, der automatisch sein darf, weil er nur an dich geht.

## Board ohne Agent

Zwei Skripte für schnelle Handgriffe, ohne Claude zu starten:

```bash
# Neue Aufgabe anlegen: Datei aus der Vorlage plus Zeile auf dem Board
ops/scripts/neue-aufgabe.sh placement-b outbound-zustellung kontrolle-review 2026-11-15 2026-11-22 "Placement-Test Variante B"

# Stand des Boards: je Status, wartet auf Mensch, überfällig, Hänger über 48 h
ops/scripts/board-status.sh
```

Das Skript lehnt eine Aufgabe ab, wenn Owner und Prüfer gleich sind oder der Agent nicht existiert.

## Kosten und Limits

Jeder Lauf verbraucht Tokens. Das ist kein Detail, sondern die häufigste Überraschung.

- **Mit Abo:** Läufe zählen gegen dein Nutzungslimit, genau wie Arbeit in der Oberfläche. Zwölf Health-Checks am Tag plus Briefing plus Deal-Alarm können einen spürbaren Teil davon verbrauchen. Ist das Limit erreicht, stehen alle Läufe still, auch deine eigene Sitzung.
- **Mit API-Schlüssel:** Abrechnung je Token. Setze `--max-budget-usd` je Lauf und ein Monatslimit in der Konsole deines Anbieters.
- **Schätzen, dann messen.** Lass jeden Lauf eine Woche laufen und schau dir den Verbrauch an, bevor du weitere planst. Steht der Verbrauch nicht im Log, ist die erste Aufgabe: Messung herstellen.
- **Sparen:** günstiges Modell für Prüfungen, `--max-turns` knapp, Health-Check still bei gesund, nur Werktage, höchstens drei bis vier Läufe gleichzeitig. Warum: Zu viele parallele Läufe sind in Nutzungsgrenzen gelaufen und haben alles gleichzeitig angehalten.
- Ein Lauf, der nichts findet, ist billig. Ein Lauf, der jedes Mal alle Dateien liest, ist teuer. Darum lesen die Skills gezielt (Board, Logs, Inbox), nicht das ganze Repo.

## Wenn etwas nicht läuft
1. `ops/logs/*-cron.log` und `ops/logs/*fehler.log` lesen.
2. Den Befehl aus der crontab von Hand im Repo ausführen.
3. Häufige Ursachen: `claude` nicht im `PATH` von cron, Anmeldung abgelaufen, Werkzeug fehlt in `--allowedTools`, Limit erreicht.
