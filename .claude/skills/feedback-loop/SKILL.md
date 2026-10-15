---
name: feedback-loop
description: 'Den Lernkreislauf eines Agenten durchlaufen: messen, Varianten testen, bewerten, mit Beleg zur Regel machen, skalieren oder stoppen. Nutzen im Prüfrhythmus jedes Agenten.'
---

# Feedback-Loop

Jeder Agent hat in seiner Datei einen Abschnitt "Feedback-Loop" mit Kennzahl, Ziel, Prüfrhythmus und dem, was er selbst anpassen darf. Dieser Skill ist der Ablauf dazu.

## Schritte
1. **Messen.** Kennzahl aus den Daten holen, nicht schätzen. Mit n und Zeitraum. Trend gegen die Vorperiode.
2. **Signale einsammeln.** Freigaben, Ablehnungen und Korrekturen des Menschen seit dem letzten Lauf aus `docs/lernen/signale.md`. Eine Korrektur ist ein Trainingsbeispiel.
3. **Testen.** Es läuft immer mindestens eine echte Alternative gegen die aktuelle Version. Vorher festlegen: Hypothese, Erfolgsschwelle, nötiges n, Prüfdatum.
4. **Bewerten.** wirkt / wirkt nicht / unklar (siehe `ergebnis-bewerten`).
5. **Lernen.** Was wirkt, wird mit Beleg in `docs/lernen/erkenntnisse.md` eingetragen (Evidenz, n, Konfidenz). Erst danach ändert der Agent seine Regel oder Vorlage, und nur im Rahmen von "Darf selbst anpassen".
6. **Skalieren oder stoppen.** Gewinner wird neue Referenz. Skalieren (mehr Volumen, mehr Geld) geht als Vorschlag an den Master-Agenten, der Mensch entscheidet. Verlierer wird gestoppt, nicht schöngeredet.
7. **Nächster Test.** Gleich den nächsten Arm anlegen.

## Regeln
- Kein Beleg, keine Regel. Eine Erkenntnis ohne Evidenz ist eine Hypothese und steht auch so da.
- Laufende Tests nicht unterwegs ändern, ohne es zu notieren.
- Ohne Messweg ist die erste Aufgabe: Messung herstellen.
