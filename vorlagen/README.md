# Vorlagen

Gerüste, die die Agenten füllen. Platzhalter stehen in spitzen Klammern. Jeder Platzhalter mit Preis, Zahl oder Ergebnis wird nur aus `firma/angebot.md` oder `firma/belege.md` gefüllt. Fehlt der Wert, bleibt `<LÜCKE: ...>` stehen und der Agent meldet die Lücke an `ops/inbox/master/`.

| Datei | Wofür | Wer nutzt sie |
|---|---|---|
| `antworten.md` | Antwort je Kategorie: positiv, später, kein Bedarf, falsche Person, Abmeldung, Frage nach Preis | outbound-antworten |
| `linkedin-vernetzung.md` | Vernetzungsanfrage und Follow-ups | outbound-kaltakquise |
| `angebot.md` | Entscheidungsangebot und finales Angebot | sales-angebot |
| `meeting-leitfaden.md` | Fragen je Gesprächsstufe statt Pitch | sales-meeting-vorbereitung |
| `mcp.cegtec.example.json` | Optionale MCP-Anbindung (Doku: https://www.cegtec.net/gtm-goat/docs/), siehe `docs/werkzeuge.md` | Mensch, einmalig |

Vorlagen sind Startpunkte. Sobald es eigene Nachrichten gibt, die der Mensch geschrieben, geändert oder gelobt hat, haben die Vorrang (Stil lernen, `docs/lernen.md`).
