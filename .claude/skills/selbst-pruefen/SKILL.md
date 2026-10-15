---
name: selbst-pruefen
description: 'Ein Agent prüft vor der Übergabe die eigene Arbeit gegen seine Regeln und lässt sie dann von einem anderen Agenten prüfen. Erkennt außerdem hängende Aufgaben und stößt sie an.'
---

# Selbst prüfen

## Vor jeder Übergabe (der ausführende Agent)
1. Auftrag nochmal lesen. Ist das Ergebnisformat erfüllt?
2. Eigene Regeln Zeile für Zeile durchgehen. Jede verletzte Regel beheben, nicht begründen.
3. Jede Zahl: steht sie in `firma/belege.md` oder in einer Datenquelle mit Datum?
4. Kundennamen, interne Daten, Links in Kaltmails, erfundene Details: raus.
5. Status `zur-pruefung`, Prüfer aus der Aufgabe benachrichtigen (`ops/inbox/<pruefer>/`).

## Als Prüfer (ein anderer Agent)
1. Gleiche Liste, unabhängig. Nicht dem Bericht glauben, das Ergebnis selbst ansehen.
2. Urteil: durchlassen / zurück mit konkretem Befund.
3. Zweimal zurück wegen derselben Sache: Eintrag in `docs/lernen/signale.md`, die Regel des Agenten wird geschärft.

## Hänger erkennen (jeder Agent, beim Board-Lesen)
- Aufgabe `in-arbeit` ohne Änderung seit 48 Stunden, oder Übergabe ohne Rückmeldung seit 24 Stunden: einmal beim Owner nachstoßen (Datei in seine Inbox).
- Danach keine Bewegung: Meldung an den Master-Agenten. Der verteilt neu oder eskaliert.
