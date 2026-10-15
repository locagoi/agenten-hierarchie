# Playbook: Kennzahlen für Outbound

Eine Kennzahl entscheidet, ob eine Kampagne skaliert, umgebaut oder gestoppt wird: **Mails je echter positiver Antwort.**

## Die Kennzahl

```
Mails je Positiv = gesendete Mails im Arm ÷ echte positive Antworten im Arm
```

- **Echt positiv** heißt: passende Rolle, echtes Interesse an Gespräch oder Magnet. Nicht: Abwesenheitsnotiz, automatische Antwort, "haben wir schon", "kein Interesse, danke". Warum: Automatische Antworten haben Erfolge vorgetäuscht.
- Gemessen je Arm (Variante), nicht je Kampagne. Warum: Ein guter Arm versteckt sonst einen schlechten.
- Öffnungsraten zählen nicht. Es gibt kein Tracking, und Öffnungen sagen nichts über Termine.

## Die Schwelle: 400

| Mails je Positiv | Bedeutung | Was passiert |
|---|---|---|
| unter 400 | Die Kombination aus Zielgruppe, Signal und Copy trägt | Skalieren: mehr Volumen aus derselben Quelle (Freigabe des Menschen) |
| über 400 | Sie trägt nicht | NICHT dieselbe Quelle hochfahren. Umbauen (siehe unten) |
| kein Positiv nach 400 Mails | Sie trägt gar nicht | Arm stoppen, Hypothese als widerlegt notieren |

Die 400 ist ein Startwert. Passe sie an deine Marge an: Je höher der Auftragswert, desto mehr Mails je Positiv darfst du dir leisten. Trag deinen Wert in `firma/kennzahlen.md` ein.

## Über 400: umbauen statt hochfahren

Warum: Volumen hat nie mehr Positive gebracht. Es hat nur Postfächer, Domains und Kontakte verbrannt. Mehr vom Falschen bleibt falsch.

1. **Muster der Positiven finden.** Was haben die echten Positiven gemeinsam (Branche, Größe, Rolle, Signal, Region, Variante)? Siehe `zielgruppe-aus-positiven.md`.
2. **Lookalike bauen.** Neue Liste nur aus Firmen und Personen, die diesem Muster entsprechen.
3. **Neue Copy testen.** Ein neuer Arm mit anderem Aufhänger, der zum Muster passt.
4. **Mit mehr Volumen testen**, bis jeder Arm genug n hat.
5. **Erst unter 400 skalieren.**

## Genug n

- Unter 400 Mails je Arm gibt es kein Urteil, nur "unklar, verlängern". Warum: Zufallstreffer wurden als Durchbruch gefeiert und dann skaliert.
- Ein Arm gilt erst als Gewinner, wenn er bei vergleichbarem Volumen deutlich besser ist. Bei 1 gegen 2 Positiven gibt es keinen Gewinner.
- Laufende Arme nicht mitten im Test ändern, ohne es als Variable zu notieren.

## Die Kette dahinter

Wenn die Kennzahl schlecht ist, liegt es an einer dieser Stellen. Von oben nach unten prüfen:

| Stufe | Kennzahl | Schlecht, wenn |
|---|---|---|
| Zustellung | Posteingang-Quote im Placement-Test | unter 80 % |
| Kontakte | Anteil gültiger Adressen nach Prüfung | Bounces über 3 % |
| Zielgruppe | Anteil Antworten "falsche Person" oder "kein Bedarf" | hoch im Vergleich zu "später" |
| Copy | Antworten insgesamt, aber wenige positive | viele Antworten, wenige Positive |
| Antworten | Zeit bis zur Antwort auf ein Positiv | über 24 Stunden |
| Termin | Positive zu gebuchtem Termin | unter 50 % |

## Wo die Zahlen stehen
- Gesendete Mails und Antworten: im Sequenz-Werkzeug. Ohne Anbindung: manuell wöchentlich in `firma/kennzahlen.md`.
- Einordnung der Antworten: `outbound-antworten`.
- Der Master-Agent zählt vor jedem Briefing selbst nach.
