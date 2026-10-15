---
name: morgen-briefing
description: 'Das tägliche Briefing für den Menschen: Fortschritt, Engpass, höchstens drei Entscheidungen. Nutzen jeden Morgen, auf dem Handy lesbar.'
---

# Morgen-Briefing

## Schritte
1. Zahlen je Ziel selbst nachzählen (nicht aus Agenten-Meldungen übernehmen).
2. Den einen Engpass bestimmen, der das wichtigste Ziel gerade am stärksten bremst.
3. Offene Fragen aus `ops/inbox/master/` und Board-Status `wartet-auf-mensch` sammeln. Nur harte Stopps bleiben übrig. Höchstens drei.
4. Befunde von `kontrolle-health` nur, wenn sie ein Ziel gefährden.

## Format (nichts anderes)
```
Fortschritt: <Kennzahl: Ausgangswert → heute → Ziel, Prüfdatum>
Engpass: <ein Satz>
Entscheidungen (max. 3):
1. <Frage, mit ja/nein oder Auswahl beantwortbar> · Empfehlung: <...> · Folge bei Nein: <...>
```
Gibt es keine: "Keine Entscheidung nötig."

## Regeln
- Schlechte Zahlen zuerst und klar.
- Nichts erneut fragen, was schon beantwortet ist.
- Unter acht Zeilen. Details verlinken.
