# Zusammenarbeit

## Die Dateien

| Datei | Wer schreibt | Zweck |
|---|---|---|
| `ops/board.md` | Master-Agent legt an, alle Agenten pflegen ihren Status | Eine Zeile je Aufgabe: Owner, Prüfer, Status, Frist, Prüfdatum |
| `ops/prioritaeten.md` | Master-Agent | Jede neue Eingabe als P0, P1 oder P2, statt in Eingangsreihenfolge |
| `ops/tasks/<datum>-<name>.md` | Owner und Prüfer | Auftrag, Ergebnis, Belege, Prüfung, Bewertung, Lernen. Vorlage: `ops/tasks/VORLAGE.md` |
| `ops/inbox/mensch/` | der Mensch | Ziele, Notizen, Sprachnotiz-Abschriften |
| `ops/inbox/master/` | alle Agenten | Rückfragen, Befunde, Health-Meldungen |
| `ops/inbox/<agent>/` | jeder Agent | Übergaben und Bitten an einen bestimmten Agenten |
| `ops/security/` | `kontrolle-security` | Verdikte zu fremdem Code |
| `docs/lernen/` | alle | Signale und belegte Erkenntnisse |

## Status einer Aufgabe

```
neu → in-arbeit → zur-pruefung → fertig → gemessen
                       │
                       └→ zurück (mit Befund) → in-arbeit
in-arbeit → wartet-auf-mensch (nur bei hartem Stopp)
```

## Wer wen prüft

| Ergebnis | Prüfer |
|---|---|
| Alles, was live geht (Code, Website, Sequenz, Regeländerung) | `kontrolle-review` |
| Fremder Code vor Installation | `kontrolle-security` |
| Kontakte vor der Sequenz | `outbound-kontaktpruefung` |
| Neue Kaltakquise-Copy | `outbound-zustellung` (Placement mit genau dieser Copy), dann `kontrolle-review` |
| Agenten-Meldungen mit Zahlen | Master-Agent zählt selbst nach |
| Posts, Kommentare, Angebote, Antwortentwürfe | der Mensch per Freigabe |
| Läuft alles? | `kontrolle-health`, alle zwei Stunden |
| Prüft die Prüfer? | Master-Agent stichprobenartig |

## Übergaben zwischen den Teams

```
outbound-zielgruppe → outbound-firmensuche → outbound-kontaktpruefung
      ▲                                              │
      │                                    outbound-kaltakquise ⇄ outbound-zustellung
      │                                              │
      └──────── echte Positive ◄── outbound-antworten ── Termin
                                                     │
                     sales-meeting-vorbereitung → Gespräch → sales-meeting-nachbereitung
                                                     │
                                  sales-angebot → sales-deal-alarm → sales-tagesaufgaben

linkedin-ideen → linkedin-autor → linkedin-kommentare → linkedin-analyse ─┐
      ▲                                                                   │
      └─────────────────── was Gespräche bringt ◄─────────────────────────┘

seo-ki-sichtbarkeit → seo-luecken → seo-artikel → kontrolle-review → live → Nachmessung
```

Fragen aus Sales-Gesprächen fließen als Ideen zu LinkedIn und als Fragen zu SEO und GEO. Positive aus Outbound schärfen die Zielgruppe.

## Eskalation zum Menschen

Nur bei **Geld, Recht, Erstversand, Löschen, Skalieren**. Dann:
1. Agent setzt Status `wartet-auf-mensch` und schreibt EINE Zeile in `ops/inbox/master/`: Frage, Empfehlung, Folge bei Nein.
2. Master-Agent bündelt alles ins nächste Morgen-Briefing (höchstens drei). Dringendes sofort.
3. Antwort des Menschen geht in die Aufgaben-Datei und als Signal nach `docs/lernen/signale.md`.

Alles andere entscheiden die Agenten selbst und begründen es in einem Satz.

## Kommunikation

- Antworten immer im selben Thread.
- Kurz. Was der Mensch liest, passt auf einen Handy-Bildschirm.
- Ein Fakt hat einen Ort: CRM für Kontakt und Deal, Aufgaben-Datei für Arbeitsstand, `docs/lernen/` für Gelerntes. Sonst verlinken.
