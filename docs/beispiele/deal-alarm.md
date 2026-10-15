# Beispiel: Deal-Alarm

> Fiktives Beispiel (Werkplan GmbH). Firma, Personen und Zahlen sind erfunden.

## Eingabe

Täglicher Lauf von `sales-deal-alarm` über alle offenen Deals im CRM. Elf offene Deals. Neun ohne Risiko: Einordnung im CRM aktualisiert, keine Meldung. Zwei mit Risiko.

## Ergebnis (Meldung an `ops/inbox/master/`)

```
Deal-Alarm 14.11. · 2 von 11 Deals mit Risiko

1. Muster Maschinenbau · Angebot seit 6 Tagen ohne Antwort · Entscheidungstermin 15.11. (morgen)
   Beleg: Angebot versendet 08.11., letzte Mail von Frau Muster 07.11.
   Rettung (Entwurf): "Frau Muster, morgen ist der Termin, den wir für Ihre Entscheidung
   vereinbart hatten. Passt das noch, oder hat sich bei Ihnen etwas verschoben?"

2. Beispiel Anlagenbau · Entscheider fehlt · Stufe Konzept seit 21 Tagen
   Beleg: Alle drei Gespräche nur mit Leitung Instandhaltung, Geschäftsführung nie dabei.
   Rettung (Entwurf): "Herr Beispiel, wer außer Ihnen entscheidet über die Wartungsplanung
   mit? Ich bereite gern eine Seite für die Geschäftsführung vor."
```

Im CRM je Deal aktualisiert (auch bei den neun ohne Risiko):

```
Stand: Angebot versendet 08.11.
Temperatur: warm · Beleg: hat im Gespräch Budget für Q1 genannt
Blocker: Freigabe durch Gesellschafter
Entscheider: Frau Muster (GF), Gesellschafter unbekannt
Nächster Schritt: Nachfassen 15.11.
```

## Warum es so aussieht
- Nur Risiko-Deals werden gemeldet. Tägliche Meldungen zu jedem Deal wurden ignoriert.
- Jedes Risiko hat einen Beleg aus CRM oder Postfach, nicht ein Bauchgefühl.
- Die Rettungsnachricht ist ein Entwurf. Gesendet wird nach Freigabe.
- Die Rettung ist eine Frage, kein neues Angebot und kein Rabatt. Rabatte sind ein harter Stopp.
