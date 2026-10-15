---
name: wochenplan
description: 'Einen konkreten Plan für die nächste Woche bauen: je Tag was du tust, was die Agenten tun, wie viele Kontakte, und woran du am Freitag siehst, ob es wirkt. Nutzen nach /einrichten und jeden Montag.'
---

# Wochenplan

Ein Plan, den ein Mensch mit wenig Zeit und ohne angebundene Werkzeuge abarbeiten kann. Kein Organigramm, keine Theorie.

## Eingaben
- `firma/kennzahlen.md`: Ziel, Ausgangswert, Stunden je Woche.
- `firma/zielgruppe.md`, `firma/werkzeuge.md`.
- Die aktuelle Sequenz in `ergebnisse/` (oder `ops/tasks/`).
- `docs/lernen/erkenntnisse.md` und Zahlen der Vorwoche, wenn es sie gibt.

## Schritte
1. **Rückwärts rechnen.** Vom Ziel (z. B. 10 Erstgespräche im Monat) auf Kontakte je Woche. Ohne eigene Zahlen nimm die Schwelle aus `docs/playbooks/kennzahlen.md` (400 Mails je echter positiver Antwort) als vorsichtige Planungsgröße und schreib sie sichtbar als `Annahme` hin, mit dem Satz "wird ab Woche 2 durch deine Zahlen ersetzt". Achtung: 400 **Mails**, nicht Kontakte. Bei drei Mails je Kontakt sind das rund 130 Kontakte je Positiv. Rechnung offen hinschreiben. Keine andere Quote erfinden. Warum: Im Test wurden aus 400 Mails 400 Kontakte, und der Plan sah dreimal so aussichtslos aus, wie er ist. Die Annahme ist eine Planungsgröße, kein Beleg. Sie kommt nie in eine Nachricht nach außen.
2. **Gegen die Zeit prüfen.** Passt das Volumen nicht in die Stunden je Woche, sag es klar und schlag vor, was wegfällt oder wie das Ziel verschoben wird.
3. **Ab heute planen, nicht ab nächstem Montag.** Der Plan deckt die nächsten fünf Arbeitstage ab heute ab. Warum: Im Test lief `/einrichten` an einem Donnerstag, der Plan begann erst am Montag. Vier Tage ohne Aufgabe, und der Schwung war weg.
4. **Je Tag** festlegen: was der Mensch tut (mit Minuten), was die Agenten liefern, welche Zahl am Abend in `firma/kennzahlen.md` steht.
5. **Ohne Werkzeuge** konkret sagen, was von Hand geht: Firmen über das Suchrezept aus `ergebnisse/zielgruppe.md` finden, Ansprechpartner auf LinkedIn oder der Website, Nachricht aus der Sequenz kopieren, Antwort in den Chat einfügen, Entwurf zurückbekommen.
6. **Letzter Tag des Plans:** Zählen und ehrlich bewerten. Bei kleinem n: "unklar, weiter so". Nie Erfolg behaupten.

## Format (Datei `ergebnisse/wochenplan-<datum>.md`)
```
# Woche ab <Datum von heute>
Ziel der Woche: <Zahl> neue Kontakte angesprochen · <Zahl> Antworten · <Zahl> Erstgespräche
Rechnung: <Ziel im Monat> → <je Woche>. Annahme: <...>
Zeit: <Stunden> h · reicht / reicht nicht, weil <...>

| Tag | Du (Minuten) | Agenten liefern | Zahl am Abend |
|---|---|---|---|
| <Tag 1, heute> | ... | ... | ... |
| <Tag 2> | ... | ... | ... |
| <Tag 3> | ... | ... | ... |
| <Tag 4> | ... | ... | ... |
| <Tag 5> | Zählen, 3 Fragen beantworten (15 min) | Bewertung je Variante | Kontakte, Antworten, Gespräche |

Erst wenn das läuft: <ein Schritt für Woche 2, z. B. Postfach anbinden, LinkedIn-Post>
```

## Regeln
- Höchstens eine neue Sache je Woche, die über Akquise hinausgeht. Warum: Wer in Woche 1 Posts, Artikel und Sequenzen gleichzeitig startet, misst nichts sauber.
- Erstversand jeder neuen Sequenz bleibt an die Freigabe des Menschen gebunden. Der Plan nennt den Tag dafür.
- Keine Zahl als Fakt, die nicht in `firma/belege.md` oder in gezählten Daten steht.
