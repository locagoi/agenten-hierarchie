# Playbook: Zielgruppe aus den Positiven ableiten

Die Zielgruppe in `firma/zielgruppe.md` ist am Anfang eine Vermutung. Nach den ersten echten Positiven wird sie zu einer Aussage mit Beleg. Owner: `outbound-zielgruppe`.

Warum: Die Zielgruppe, die man sich am Schreibtisch ausdenkt, ist selten die, die antwortet. Die Daten der Positiven wissen es besser.

## Wann
- Sobald eine Sequenz 10 echte Positive hat, danach monatlich.
- Sofort, wenn eine Sequenz über 400 Mails je Positiv liegt (siehe `kennzahlen.md`).

## Schritte

1. **Positive sammeln.** Alle echten Positiven der letzten 90 Tage, aus dem Sequenz-Werkzeug oder `outbound-antworten`. Nur echte Positive (siehe `kennzahlen.md`).
2. **Vergleichsgruppe bilden.** Kontaktierte ohne positive Antwort aus denselben Sequenzen.
3. **Merkmale je Kontakt erfassen.** Branche, Größe, Region, Rolle, Senioritätsstufe, Signal (welches, wie alt), Variante, Kanal, Absenderpostfach.
4. **Vergleichen.** Je Merkmal: Anteil bei den Positiven gegen Anteil bei allen Kontaktierten.

```
| Merkmal | Wert | Positive (n) | Anteil Positive | Anteil Kontaktierte | Faktor |
|---|---|---|---|---|---|
| Rolle | Geschäftsführung | 9 | 75 % | 40 % | 1,9 |
| Signal | Stellenanzeige < 4 Wochen | 8 | 67 % | 30 % | 2,2 |
```

Faktor = Anteil Positive ÷ Anteil Kontaktierte. Über 1,5 ist ein Kandidat für das Muster.

5. **Rechnen, nicht schätzen lassen.** Zählen und Vergleiche im Skript oder in der Tabelle, nie in einer KI-Spalte. Warum: Ein KI-Prüfschritt hat Zahlen falsch verglichen und ein Viertel passender, bezahlter Datensätze verworfen.
6. **Mit n und Sicherheit notieren.** Jede Aussage trägt n und eine Einschätzung: belegt (n ≥ 10 und Faktor deutlich), Hinweis (n 5 bis 9), Zufall möglich (n < 5).
7. **`firma/zielgruppe.md` aktualisieren** mit Datum und Quelle je Zeile. Alte Kriterien nicht löschen, sondern als "abgelöst am" markieren.
8. **Lookalike-Auftrag** an `outbound-firmensuche`: neue Firmen und Personen nach dem Muster. Eigene Daten zuerst (Bestandskontakte, frühere Gespräche), externe Suche als Rückfall.
9. **Neue Copy** an `outbound-kaltakquise`: ein Arm, dessen Aufhänger zum Muster passt.

## Was daraus nicht wird
- Kein neues Kriterium aus zwei Positiven. Zu kleines n heißt beobachten, nicht behaupten.
- Keine Ausschlüsse nur, weil eine Gruppe noch nicht geantwortet hat, solange ihr n klein ist.

## Auch aus Nein lernen
Antworten "kein Bedarf, weil ..." und "falsche Person, zuständig ist ..." sind Daten. Sie zeigen Ausschlüsse und die richtige Rolle. `vorlagen/antworten.md` fragt darum bei "kein Bedarf" eine Lernfrage.
