---
name: deal-alarm
description: 'Täglicher Durchlauf über alle offenen Deals: Einordnung im CRM aktualisieren und nur bei Risiko warnen.'
---

# Deal-Alarm

## Schritte
1. Offene Deals mit Stufe, Enddatum, letzter Aktivität, letztem Kontakt lesen.
2. Je Deal Einordnung aktualisieren: Stand, heiß/warm/kalt/tot mit Beleg, Blocker, Entscheider, nächster Schritt mit Datum.
3. Deals ohne nächstes Datum: Vorschlag für den nächsten Schritt.
4. Risiko prüfen: Enddatum überschritten · fünf oder mehr Tage ohne Antwort nach Angebot · negative Antwort · Entscheider fehlt.
5. Nur Risiko-Deals melden, höchstens drei Zeilen je Deal, mit Entwurf für die Rettungsnachricht.

Kein Risiko: keine Meldung.

Beispiel für ein fertiges Ergebnis: `docs/beispiele/deal-alarm.md`.
