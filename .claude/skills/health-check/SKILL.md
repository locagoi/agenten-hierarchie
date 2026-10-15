---
name: health-check
description: 'Alle zwei Stunden prüfen, ob alle Agenten und geplanten Läufe arbeiten. Hänger einmal neu anstoßen, sonst mit Beleg melden.'
---

# Health-Check

## Prüfliste
1. Geplante Läufe: gelaufen? Log frisch? Fehler? Unplausible Nullen?
2. Board: Aufgaben `in-arbeit` ohne Änderung seit 48 Stunden, Übergaben ohne Rückmeldung seit 24 Stunden.
3. Tagesziele aus `firma/kennzahlen.md`: Ist gegen Soll.
4. Inboxen: liegen Dateien länger als einen Tag unbearbeitet?

## Handeln
- Gesund: eine Zeile in `ops/logs/health.log`. Sonst nichts.
- Hänger: einmal neu anstoßen (Datei in die Inbox des Agenten: Auftrag, was hängt, seit wann).
- Hängt es danach weiter oder ist es kritisch: Befund an `ops/inbox/master/`, höchstens acht Zeilen, je was / Beleg / Vorschlag.
- Kritisch (Versand gestoppt, doppelter Versand, Kunde betroffen): zusätzlich sofort an den Menschen.

Nie selbst reparieren, senden oder löschen.

Beispiel für ein fertiges Ergebnis: `docs/beispiele/health-check.md`.
