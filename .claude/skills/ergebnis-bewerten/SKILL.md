---
name: ergebnis-bewerten
description: 'Ein geliefertes Ergebnis prüfen (Qualität vor Freigabe) oder eine Wirkung bewerten (nach Messung): wirkt, wirkt nicht, unklar.'
---

# Ergebnis bewerten

## Vor der Freigabe (Qualität)
- Erfüllt es den Auftrag und das Ergebnisformat?
- Hält es die Regeln des ausführenden Agenten und `docs/regeln.md` ein?
- Hat jede Zahl einen Beleg?
- Wurde es von einem anderen Agenten geprüft?
Urteil: freigabereif / zurück mit Befund (konkret, was fehlt).

## Nach der Messung (Wirkung)
- Kennzahl: Ausgangswert → jetzt, mit n.
- Urteil: **wirkt** / **wirkt nicht** / **unklar**. Zu kleines n heißt unklar und verlängern, nie Erfolg behaupten.
- Folge: wirkt → skalieren vorschlagen (Freigabe). Wirkt nicht → stoppen. Unklar → neues Prüfdatum.
- Eintrag in die Aufgaben-Datei und in `docs/lernen/signale.md`.
