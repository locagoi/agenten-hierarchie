# Playbook: Zustellbarkeit

Eine perfekte Mail im Spam bringt null Antworten. Zustellung ist darum kein Technikdetail, sondern die erste Kennzahl jeder Kampagne. Owner: `outbound-zustellung`.

## 1. Eigene Versanddomains

- **Nie von der Hauptdomain kalt versenden.** Eigene Versanddomains, die ähnlich heißen (z. B. `firma-mail.de`, `firmagruppe.de`). Warum: Wird eine Versanddomain verbrannt, bleibt die Hauptdomain mit Rechnungen, Angeboten und Kundenmails sauber.
- Je Versanddomain zwei bis drei Postfächer. Warum: Mehr Postfächer je Domain bündeln das Risiko, weniger machen es teuer.
- Die Versanddomain leitet im Browser auf die Hauptwebsite weiter. Warum: Neugierige Empfänger tippen die Domain ein. Eine leere Seite wirkt unseriös.
- Domains und Postfächer kauft nur der Mensch oder ein Agent mit ausdrücklicher Freigabe für genau diese Ausgabe.

## 2. SPF, DKIM, DMARC

Jede Versanddomain braucht alle drei, bevor die erste Mail rausgeht.

| Eintrag | Was er tut | Beispiel (Platzhalter) |
|---|---|---|
| SPF (TXT) | Sagt, welche Server für die Domain senden dürfen | `v=spf1 include:<anbieter-spf> ~all` |
| DKIM (TXT/CNAME) | Signiert jede Mail, Empfänger prüft die Echtheit | vom Postfach-Anbieter erzeugt |
| DMARC (TXT auf `_dmarc`) | Sagt, was bei Fehlschlag passiert, und wohin Berichte gehen | `v=DMARC1; p=none; rua=mailto:<berichte-adresse>` |

- Mit `p=none` starten, nach zwei sauberen Wochen auf `quarantine`. Warum: Ein Tippfehler im SPF mit strenger Policy wirft sonst eigene Mails weg.
- Nur ein SPF-Eintrag je Domain. Warum: Zwei SPF-Einträge sind ungültig, und beide werden ignoriert.
- Prüfen mit einem DNS-Prüfwerkzeug deiner Wahl. Ergebnis als Beleg in die Aufgabe.

## 3. Warm-up

- Neue Postfächer zwei bis drei Wochen aufwärmen, bevor sie Kampagnen senden. Warm-up läuft danach weiter.
- Start mit wenigen Mails am Tag, langsam steigern. Tageslimit je Postfach festlegen und in `firma/kennzahlen.md` eintragen.
- Kampagnen- plus Testvolumen bleibt unter dem Tageslimit. Warum: Spitzen sehen für Anbieter wie Spam aus.

## 4. Postfächer halb Microsoft, halb Google

- Neue Postfächer immer zur Hälfte bei jedem der beiden großen Anbieter, je Domain.
- Absender passend zum Empfänger zuordnen: Google-Empfänger bekommen Mails aus Google-Postfächern, Microsoft-Empfänger aus Microsoft-Postfächern. Der Anbieter des Empfängers steht im MX-Eintrag seiner Domain.
- Warum: Postfächer des einen Anbieters erreichten Empfänger des anderen kaum, beim eigenen aber fast immer.

## 5. Täglicher Placement-Test mit echter Copy

- **Täglich, je Postfach, mit der echten Copy der zugeordneten Sequenz.** Nicht mit "Test 123". Warum: Tests mit kurzem Dummy-Text sahen gut aus, die echte Verkaufsmail landete aus denselben Postfächern im Spam.
- Ergebnis je Postfach und Anbieter: Posteingang, Werbung/Reiter, Spam, fehlt. Ablage im Log, Trend über 7 Tage.
- Neue Copy geht erst live, wenn sie einen Placement-Test bestanden hat.

## 6. Wann ein Postfach "verbrannt" ist

- **Erst nach zwei schlechten Tests** (unter 50 % Posteingang) mit ausreichend Stichprobe. Ein schlechter Test ist ein Hinweis, kein Urteil. Warum: Einzelne Tests schwanken stark. Wer nach einem Test abschaltet, verbrennt gute Postfächer.
- Verbrannt heißt: Kampagnen raus, Warm-up weiter, nach zwei Wochen neu testen. Ersatz nur mit Freigabe (Geld).
- `outbound-zustellung` schlägt vor. Pausieren, löschen und kaufen macht er nie selbst.

## 7. Copy, die zustellt

- Klartext, keine Links, keine Bilder, kein Öffnungs- und Klick-Tracking.
- Kurz (unter 100 Wörter), keine Anhänge in der ersten Mail.
- Keine Wörter, die nach Werbung riechen, in der Betreffzeile.

## Wöchentliche Prüfliste
- [ ] SPF, DKIM, DMARC je Versanddomain gültig
- [ ] Jedes aktive Postfach hatte an jedem Versandtag einen Placement-Test
- [ ] Kein Postfach über Tageslimit
- [ ] Verbrannte Postfächer aus allen Kampagnen raus
- [ ] Verhältnis Microsoft/Google bei neuen Postfächern halb und halb
