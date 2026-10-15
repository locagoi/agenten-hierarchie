---
name: morgen-briefing
description: 'Das tägliche Briefing für den Menschen: Fortschritt, Engpass, höchstens drei Entscheidungen, dazu was heute zu tun ist. Nutzen jeden Morgen, auf dem Handy lesbar.'
---

# Morgen-Briefing

## Schritte
1. Zahlen je Ziel selbst nachzählen (nicht aus Agenten-Meldungen übernehmen).
2. Den einen Engpass bestimmen, der das wichtigste Ziel gerade am stärksten bremst.
3. Offene Fragen aus `ops/inbox/master/` und Board-Status `wartet-auf-mensch` sammeln. Nur harte Stopps bleiben übrig. Höchstens drei.
4. Befunde von `kontrolle-health` nur, wenn sie ein Ziel gefährden.
5. Den heutigen Tag aus dem neuesten `ergebnisse/wochenplan-*.md` holen. Gibt es keinen: `/wochenplan` vorschlagen.

## Format (nichts anderes)
```
Fortschritt: <Kennzahl: Ausgangswert → heute → Ziel, Prüfdatum>
Engpass: <ein Satz>
Heute für dich: <aus dem Wochenplan, mit Minuten, max. 3 Punkte>
Entscheidungen (max. 3):
1. <Frage, mit ja/nein oder Auswahl beantwortbar> · Empfehlung: <...> · Folge bei Nein: <...>
```
Gibt es keine: "Keine Entscheidung nötig."

## Regeln
- Schlechte Zahlen zuerst und klar.
- Gibt es noch keine gezählten Zahlen, schreib das in einem Halbsatz ("noch nichts gezählt, erster Wert Freitag") statt "unbekannt" in jede Zeile. Warum: Am ersten Tag bestand das Briefing im Test fast nur aus "unbekannt" und half nicht weiter.
- Nichts erneut fragen, was schon beantwortet ist.
- Unter zehn Zeilen. Details verlinken.

Beispiel für ein fertiges Ergebnis: `docs/beispiele/morgen-briefing.md`.
