---
name: kaltakquise-entwurf
description: 'Eine Kaltakquise-Sequenz für E-Mail und LinkedIn entwerfen, mit Testvariante. Klartext, ohne Links, Magnet als Frage. Liefert den fertigen Text in den Chat und nach ergebnisse/.'
---

# Kaltakquise entwerfen

## Schritte
1. `firma/angebot.md`, `firma/zielgruppe.md`, `firma/belege.md`, `firma/stil.md` und die letzten Gewinner aus `docs/lernen/erkenntnisse.md` lesen.
2. **Magnet wählen.** Liegt in `lead-magnets/` keiner, schlag für A und B je einen vor, den der Mensch in unter 30 Minuten je Antwort liefern kann (z. B. ein kurzer Check, eine Einschätzung, eine Vorlage). Warum: Ohne Magnet ist Mail 1 nur eine Terminfrage, und darauf kommen kaum Antworten.
3. Hypothese für Variante A und eine wirklich andere Variante B festlegen (anderer Aufhänger, Magnet, Länge oder Persona).
4. Sequenz schreiben:
   - Tag 0: LinkedIn-Vernetzung, ohne Nachricht oder mit einem Satz.
   - Tag 2: Mail 1. Signal über das Thema aufgreifen, ein Satz Nutzen, Magnet als Frage ("Soll ich Ihnen ... schicken?"). Kein Link.
   - Tag 3: Mail 2, kurzer anderer Blickwinkel.
   - Tag 7: Mail 3, kurz, freundlich abschließend.
   - **Immer auch eine Fassung nur für LinkedIn** mit denselben Armen (Nachricht nach Annahme, Magnet-Frage, Abschluss). Warum: Werbe-E-Mails ohne vorherige Einwilligung sind in Deutschland auch an Firmen ein Abmahnrisiko (§ 7 UWG). Ob er mailt, entscheidet der Mensch. Die Sequenz ist trotzdem sofort nutzbar. Kein Rechtsrat, im Zweifel prüfen lassen.
5. Platzhalter nur für Daten je Empfänger: `<Nachname>`, `<Firma>`, `<Stelle>` o. ä. Absendername aus `firma/stil.md`. Fehlt er: `<LÜCKE: Absender>`.
6. Prüfen: Klartext, keine Links, kein Tracking, keine Preise, keine Rechenbeispiele, keine Handlung zitiert, nur belegte Aussagen, unter 100 Wörter je Mail. Jede Zahl steht wörtlich in `firma/belege.md`, sonst raus oder `<LÜCKE: ...>` und Meldung an `ops/inbox/master/`.
7. Speichern unter `ergebnisse/sequenz-<datum>.md`, Zeile auf `ops/board.md` mit Prüfer `kontrolle-review`. Ist ein Placement-Werkzeug angebunden: an `outbound-zustellung` für den Test mit genau dieser Copy.

## Ausgabe im Chat
Mail 1 von A und B **vollständig** zum Kopieren, dazu Hypothese je Arm in einer Zeile und der Pfad zur Datei. Keine Tabelle statt des Textes. Warum: Im Test kam nur eine Zusammenfassung in den Chat, der Mensch musste die Datei suchen.

Danach höchstens drei offene Punkte, je eine Zeile. Offene Punkte blockieren den Entwurf nicht.

Erstversand einer neuen Sequenz braucht die Freigabe des Menschen.

Beispiel für ein fertiges Ergebnis: `docs/beispiele/kaltakquise-sequenz.md`. Vorlagen für LinkedIn: `vorlagen/linkedin-vernetzung.md`.
