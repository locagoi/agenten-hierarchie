# Rhythmus: was wann läuft

Vorschlag für einen Arbeitstag. Die Zeiten passt du an. Geplante Läufe startest du mit Claude Code ohne Oberfläche, zum Beispiel per cron:

```
claude -p "/health-check" --agent kontrolle-health
```

Fertige Cron-Zeilen, Berechtigungen und Hinweise zu Kosten: `docs/automatisierung.md`.

| Wann | Wer | Was |
|---|---|---|
| alle 2 h | kontrolle-health | Health-Check, Hänger anstoßen |
| werktags früh | outbound-zustellung | Placement-Tests aller Postfächer |
| werktags früh | outbound-firmensuche, outbound-kontaktpruefung | Tagesziel neue Kontakte je Sequenz |
| werktags früh | sales-deal-alarm | Deals einordnen, Risiken melden |
| werktags früh | sales-tagesaufgaben | Top 5 Umsatzaufgaben |
| morgens | Master-Agent | Morgen-Briefing |
| laufend | outbound-antworten | Antworten sortieren, Entwürfe, Termine |
| 1 h vor jedem Termin | sales-meeting-vorbereitung | Call-Plan |
| nach jedem Termin | sales-meeting-nachbereitung | CRM, Entwurf, Coaching |
| täglich | linkedin-autor, linkedin-kommentare, linkedin-analyse | Post, Kommentare, Messung |
| wenn Vorrat < 3 | linkedin-ideen | neue Ideen |
| Mo, Mi, Fr | seo-ki-sichtbarkeit → seo-luecken → seo-artikel | messen, Lücken, Artikel |
| montags | outbound-zielgruppe, linkedin-analyse, alle | Wochen-Feedback-Loop |
| wöchentlich | kontrolle-security | Setup-Prüfung |
| freitags | Master-Agent | Rückblick: wiederholte Korrekturen werden Regeln oder Skills |
