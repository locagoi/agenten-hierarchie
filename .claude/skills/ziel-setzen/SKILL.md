---
name: ziel-setzen
description: Schärft ein Ziel zu Kennzahl, Ausgangswert, Zielwert, Prüfdatum und Owner und legt die erste Aufgabe an. Nutzen, wenn der Mensch ein neues Ziel nennt.
---

# Ziel setzen

1. Fragen Sie nur nach, was fehlt (max. 3 Fragen auf einmal):
   - **Kennzahl:** Woran sehen wir, dass es geklappt hat? (z. B. Erstgespräche, positive Antworten)
   - **Ausgangswert:** Wo stehen wir heute? Unbekannt ist eine gültige Antwort, dann ist die erste Aufgabe "Messung herstellen".
   - **Zielwert und Prüfdatum.**
2. Schreiben Sie das Ziel in einem Satz: "Bis <Datum> steigt <Kennzahl> von <Ausgang> auf <Ziel>."
3. Legen Sie `ops/tasks/<datum>-<kurzname>.md` nach Vorlage `ops/tasks/BEISPIEL.md` an.
4. Tragen Sie die Aufgabe ins `ops/board.md` ein (Status "offen", Owner, Frist, Prüfdatum).
5. Delegieren Sie mit `/delegieren`.
6. Antworten Sie im Berichtsformat aus `CLAUDE.md`.

Kein Ziel ohne Messweg. Kein Messweg heißt: erst messen.
