# Agenten-Hierarchie

Ein klonbares Claude-Code-Setup auf Deutsch, das eine echte Agenten-Hierarchie abbildet: Sie setzen das Ziel, ein Master-Agent verteilt die Arbeit, ein Go-to-Market-Agent führt Sales und Content, und am Ende entscheiden wieder Sie.

Kein Framework, keine Abhängigkeiten. Nur Markdown-Dateien, die Claude Code liest.

## Die Hierarchie

```
Mensch (setzt Ziele, gibt frei, entscheidet)
  │
  └── Master-Agent (Orchestrator: plant, delegiert, berichtet)
        │
        └── Go-to-Market-Agent (übersetzt das Ziel in Sales- und Content-Arbeit)
              │
              ├── Sales-Agent    (Zielliste, Outreach-Entwürfe, Antworten einordnen)
              ├── Content-Agent  (Ideen, Posts, Wochenplan)
              │
              └── lead-magnets/  (gemeinsamer Ordner: Content und Sales nutzen dieselben Magnete)
```

Jede Ebene hat eine eigene Rolle in `.claude/agents/`. Was sie darf und was nie, steht dort schriftlich.

## Das Arbeitsprinzip

```
Ziel setzen  →  Agenten bauen  →  Ergebnis bewerten  →  iterieren
```

1. **Ziel setzen:** Sie formulieren ein Ziel mit Kennzahl, Ausgangswert, Zielwert und Prüfdatum.
2. **Agenten bauen:** Der Master zerlegt das Ziel in Aufgaben, die Fach-Agenten liefern Entwürfe.
3. **Ergebnis bewerten:** Sie prüfen, was gut ist und was nicht. Jedes Feedback ist ein Trainingssignal.
4. **Iterieren:** Die Agenten verbessern, legen erneut vor. Erst nach Ihrer Freigabe geht etwas live.

Danach wird gemessen, ob sich die Kennzahl bewegt hat. Bewegt sie sich nicht, wird gestoppt oder geändert, nicht schöngeredet.

## Installation in 3 Schritten

1. **Klonen**
   ```bash
   git clone https://github.com/<ihr-konto>/agenten-hierarchie.git
   cd agenten-hierarchie
   ```
2. **In Claude Code öffnen**
   ```bash
   claude
   ```
   Claude Code liest `CLAUDE.md` automatisch. Damit ist der Master-Agent aktiv.
3. **Erstes Ziel setzen**
   ```
   /ziel-setzen Ich will in 30 Tagen 5 Erstgespräche mit Geschäftsführern von Steuerkanzleien.
   ```

Der Master legt eine Aufgabe in `ops/tasks/` an, trägt sie ins `ops/board.md` ein und berichtet Ihnen.

## Aufbau

```
CLAUDE.md                  Master-Agent: Delegation, Board, Berichtsformat
.claude/agents/            master, gtm, sales, content
.claude/skills/            ziel-setzen, delegieren, ergebnis-bewerten,
                           post-schreiben, outreach-entwurf, wochen-review
ops/board.md               Übersicht: offen, in Arbeit, wartet auf Sie, erledigt
ops/tasks/                 eine Datei pro Aufgabe (siehe BEISPIEL.md)
ops/inbox/                 Ihre Eingänge an die Agenten
lead-magnets/              gemeinsamer Ordner für Content und Sales
```

## Beispielziele

- 5 Erstgespräche in 30 Tagen mit einer klar umrissenen Zielgruppe.
- Jede Woche 3 LinkedIn-Posts, die aus eigener Erfahrung erzählen, 8 Wochen lang.
- Einen Lead Magnet entwickeln und testen, ob er Antworten auslöst (A/B gegen die bisherige Variante).
- Die Antwortquote der kalten Mails von 2 % auf 4 % steigern, Prüfung nach 3 Wochen.

## Leitplanken

- **Keine Ausgaben ohne Freigabe.** Nichts kaufen, buchen, abonnieren, aufladen.
- **Prüfen vor Live.** Nichts wird gesendet oder veröffentlicht, solange Sie den Entwurf nicht freigegeben haben. Die Agenten erstellen Entwürfe, nie Versand.
- **Der Mensch entscheidet.** Geld, Recht, Löschen, Skalieren und Erstversand liegen bei Ihnen.
- **Belege statt Behauptungen.** Zahlen und Aussagen nur, wenn sie aus Ihren Daten stammen. Lücken werden benannt, nicht aufgefüllt.
- **Keine Kundendaten in öffentlichen Inhalten.** Kein Name, keine Zahl aus einem Kundenprojekt ohne Ihre Erlaubnis.

## Anpassen

- Rollen schärfen: `.claude/agents/*.md` (Scope, Tools, Nie-Liste).
- Eigene Regeln: in `CLAUDE.md` ergänzen.
- Weitere Agenten (z. B. Kundenerfolg): neue Datei in `.claude/agents/`, in `gtm.md` oder `master.md` als Unterstellten eintragen.

## Lizenz

MIT, siehe [LICENSE](LICENSE).

---

Ein Setup von [CegTec](https://cegtec.net). Wenn Sie wissen möchten, wie sich das in Ihrem Vertrieb einsetzen lässt: Termin buchen unter cegtec.net.
