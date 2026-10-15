---
name: delegieren
description: 'Ein Ziel in Aufträge zerlegen und aufs Board schreiben: je Auftrag Owner, Ergebnisformat, Frist, Prüfer, Grenzen. Nutzen nach ziel-setzen.'
---

# Delegieren

## Schritte
1. Ziel in Teilaufgaben zerlegen, die je ein Agent allein erledigen kann.
2. Je Teilaufgabe eine Datei `ops/tasks/<datum>-<kurzname>.md` nach `ops/tasks/VORLAGE.md`.
3. Je Aufgabe eine Zeile auf `ops/board.md`, Status `neu`.
4. Prüfer eintragen. Nie der Agent selbst. Für alles, was live geht: `kontrolle-review`.
5. Abhängigkeiten eintragen ("startet nach ..."). Der nachfolgende Agent holt sich die Aufgabe selbst, sobald die vorherige `fertig` ist.
6. Grenzen in jede Aufgabe: was nicht gesendet, gekauft, gelöscht wird.

## Regeln
- Höchstens drei bis vier Aufgaben gleichzeitig in Arbeit.
- Ein Auftrag ohne Ergebnisformat und Frist ist kein Auftrag.
- Was im Mandat liegt, wird nicht zurückgefragt.
