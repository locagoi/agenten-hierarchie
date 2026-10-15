---
name: morgen-briefing
description: 'Das tägliche Briefing für den Menschen: Fortschritt, Engpass, höchstens drei Entscheidungen, dazu was heute zu tun ist. Nutzen jeden Morgen, auf dem Handy lesbar.'
---

# Morgen-Briefing

## Schritte
1. Zahlen je Ziel selbst nachzählen (nicht aus Agenten-Meldungen übernehmen). Board-Stand: `ops/scripts/board-status.sh` allein aufrufen, ohne `bash` davor und ohne Pipe. Warum: So greift die Freigabe aus `.claude/settings.json`, auch in Cron-Läufen.
2. **Liegengebliebenes anstoßen.** Aufgaben im Status `neu` oder `zur-pruefung`, die nur auf einen Agenten warten (nicht auf den Menschen): jetzt an den Subagenten geben, wenn der Lauf das darf. Sonst unter "Heute für dich" den einen Satz nennen, mit dem der Mensch sie startet, z. B. `kontrolle-review: prüf Aufgabe 002`. Warum: Ohne Cron läuft kein Agent von allein. Im Test wartete der Erstversand auf eine Prüfung, die nie startete.
3. Den einen Engpass bestimmen, der das wichtigste Ziel gerade am stärksten bremst.
4. Offene Fragen aus `ops/inbox/master/` und Board-Status `wartet-auf-mensch` sammeln. Nur harte Stopps bleiben übrig. Höchstens drei.
5. Befunde von `kontrolle-health` nur, wenn sie ein Ziel gefährden.
6. Den heutigen Tag aus dem neuesten `ergebnisse/wochenplan-*.md` holen. Gibt es keinen: `/wochenplan` vorschlagen.

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
