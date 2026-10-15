# Lernen: wie aus Arbeit Regeln werden

Einzelne Prompts werden nicht besser. Ein Team, das jede Rückmeldung festhält und nur Belegtes übernimmt, schon.

## 1. Freigaben und Korrekturen sind Signale

Jede Reaktion des Menschen auf ein Ergebnis wird in `docs/lernen/signale.md` notiert:

| Datum | Agent | Ergebnis | Reaktion | Was geändert wurde | Warum (Zitat) |
|---|---|---|---|---|---|

- Freigabe ohne Änderung: positives Beispiel.
- Freigabe mit Änderung: die geänderte Fassung ist das Beispiel, die Differenz ist die Lektion.
- Ablehnung: Gegenbeispiel.
- Dieselbe Korrektur zweimal: Sie wird zur Regel in der Datei des Agenten. Das prüft der Master-Agent jede Woche.

## 2. Stil aus eigenen Nachrichten (Few-Shot)

Entwürfe sollen klingen wie der Absender, nicht wie ein Modell.

- Quellen je Absender: selbst geschriebene Nachrichten, vom Menschen geänderte und dann gesendete Entwürfe, ausdrücklich gelobte Entwürfe.
- Abgelehnte Entwürfe gehen als Gegenbeispiele mit.
- Du oder Sie wird gespiegelt, wie die andere Seite schreibt.
- Die Frage der anderen Seite wird zuerst beantwortet.
- Lernen aus Antwortquoten erst, wenn je Absender genug Stichprobe vorliegt.

Warum: Ein Entwurf siezte jemanden, mit dem längst geduzt wurde, überging seine Frage und pitchte sofort.

## 3. Eine Erkenntnis braucht Beleg

In `docs/lernen/erkenntnisse.md` steht nur, was belegt ist:

| Erkenntnis | Evidenz (Daten, Zeitraum) | n | Konfidenz | Status | Prüfdatum |
|---|---|---|---|---|---|

- **Status:** Hypothese → bestätigt → Regel. Ohne Evidenz bleibt es Hypothese.
- **Konfidenz** wird aus den Daten berechnet oder begründet, nie geschätzt und nie leer gelassen.
- Widerlegte Einträge werden zurückgestuft, nicht gelöscht.

Warum: Eine Lernseite zeigte Dutzende "bestätigte" Erkenntnisse mit Evidenz null. Darauf wurden Texte und Zielgruppen gebaut.

## 4. Bewerten: wirkt, wirkt nicht, unklar

- **wirkt**: Kennzahl hat sich in der vorher festgelegten Richtung bewegt, mit genug n.
- **wirkt nicht**: hat sich nicht bewegt oder verschlechtert.
- **unklar**: zu kleines n. Verlängern. Nie Erfolg behaupten.

## 5. Skalieren oder stoppen

- Gewinner werden neue Referenz. Mehr Volumen oder mehr Geld schlägt der Agent vor, der Mensch entscheidet.
- Verlierer werden gestoppt, nicht verteidigt.
- Danach sofort der nächste Test. Es läuft immer eine echte Alternative.

Beispiel Outbound: Skaliert wird eine Sequenz erst, wenn sie unter 400 Mails je positiver Antwort liegt. Darüber wird nicht dasselbe Sourcing hochgefahren, sondern es werden die Positiven analysiert, Lookalikes gebaut und mit mehr Volumen getestet.
