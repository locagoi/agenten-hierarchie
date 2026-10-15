# Autonomie: wie sich das Team selbst führt

Das Wichtigste an diesem Repository sind nicht die 22 Rollen. Es ist, dass die Agenten sich untereinander selbst managen und sich über Feedback-Loops selbst verbessern. Der Mensch setzt Ziele und trifft die wenigen Entscheidungen, die wirklich seine sind.

## 1. Selbst managen

```
Ziel vom Menschen
   │
Master-Agent ── zerlegt, schreibt Aufträge aufs Board, bestimmt Prüfer
   │
Board (ops/board.md) ◄──────────────────────────────┐
   │ Agenten holen sich ihre Aufträge selbst        │
Fach-Agent ── arbeitet, prüft sich selbst ── meldet Ergebnis zurück
   │                                                │
anderer Agent prüft (nie der eigene) ── zurück mit Befund ──┘
   │ durchgelassen
Livegang (nur nach Freigabe, wenn ein harter Stopp berührt ist)
   │
kontrolle-health prüft alle zwei Stunden: läuft alles? hängt etwas?
```

**Die Regeln dahinter:**

1. **Aufträge werden geholt, nicht zugeteilt und abgewartet.** Jeder Agent liest beim Start das Board und nimmt sich Zeilen mit seinem Namen und Status `neu`. Abhängige Aufgaben startet der nächste Agent selbst, sobald die vorherige `fertig` ist.
2. **Jeder meldet zurück.** Ergebnis und Belege landen in der Aufgaben-Datei, Status `zur-pruefung`. Kein "ich bin dran" ohne Datei.
3. **Niemand prüft sich selbst.** Jede Aufgabe hat einen Prüfer, der nicht der Owner ist. Für alles, was live geht, ist das `kontrolle-review`.
4. **Hänger werden von anderen erkannt.** Jeder Agent, der das Board liest, stößt eine Aufgabe ohne Bewegung seit 48 Stunden einmal beim Owner an. `kontrolle-health` macht das alle zwei Stunden systematisch. Hängt es danach immer noch, verteilt der Master-Agent neu.
5. **Agenten fragen Agenten.** Wer etwas braucht, legt eine Datei in `ops/inbox/<agent>/`. Rückfragen innerhalb des Mandats beantwortet der Master-Agent. Der Mensch wird dafür nicht geweckt.
6. **Ein Ziel ist ein Mandat.** Was zum Erreichen eines gesetzten Ziels nötig ist, gilt als freigegeben. Zwischendurch wird nicht gefragt.

## 2. Was zum Menschen kommt

Nur fünf Dinge, gebündelt im Morgen-Briefing (höchstens drei Entscheidungen am Tag):

| Harter Stopp | Beispiel |
|---|---|
| Geld | Abo, Postfach, Domain, Daten kaufen, Budget erhöhen |
| Recht | Vertragstexte, AGB, rechtlich heikle Aussagen |
| Erstversand | eine neue Sequenz geht zum ersten Mal raus, ein Angebot, ein Post |
| Löschen | alles, was sich nicht rückgängig machen lässt |
| Skalieren | einen Gewinner mit mehr Volumen oder mehr Geld fahren |

Alles andere entscheiden die Agenten und begründen es in einem Satz. Warum: Als die Agenten zu viel fragten, wurde der Mensch zum Engpass, und nichts lief mehr ohne ihn.

## 3. Selbst lernen

Jeder Agent hat in seiner Datei einen Abschnitt **Feedback-Loop**:

- **Kennzahl**: woran er sich messen lässt (z. B. Mails je positiver Antwort, Gespräche je Post).
- **Ziel**: wohin die Kennzahl soll.
- **Prüfrhythmus**: wann er misst und bewertet.
- **Darf selbst anpassen**: was er ohne Freigabe ändern darf (Varianten, Reihenfolge, Formulierungen).
- **Nur mit Freigabe**: was einen harten Stopp berührt.

Der Kreislauf (Skill `feedback-loop`):

```
messen → Signale des Menschen einsammeln → Variante testen
   → bewerten (wirkt / wirkt nicht / unklar)
   → mit Beleg zur Regel machen → skalieren (Freigabe) oder stoppen
   → nächster Test
```

- **Jede Freigabe und jede Korrektur ist ein Signal.** Sie wird in `docs/lernen/signale.md` festgehalten und fließt als Beispiel in die nächsten Entwürfe.
- **Stil aus eigenen Nachrichten.** Entwürfe lernen aus dem, was der Mensch selbst geschrieben, geändert oder gelobt hat.
- **Regel erst mit Beleg.** Eine Erkenntnis ohne Zahlen ist eine Hypothese. Erst mit Evidenz und Konfidenz wandert sie nach `docs/lernen/erkenntnisse.md` und dann in die Regeln des Agenten.
- **Was wirkt, wird skaliert. Was nicht wirkt, wird gestoppt.**

Details: `docs/lernen.md`. Zusammenarbeit im Einzelnen: `docs/zusammenarbeit.md`.
