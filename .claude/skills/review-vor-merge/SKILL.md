---
name: review-vor-merge
description: 'Zweiter Blick vor jedem Merge und jedem Livegang. Nie die eigene Arbeit. Migration vor Merge.'
---

# Review vor Merge

## Schritte
1. Änderung vollständig lesen, nicht nur die Beschreibung.
2. Code: Korrektheit, Sicherheit, Fehlerfälle, Tests. Texte: Belege, Stilregeln, Kundendaten, Links in Kaltmails.
3. Enthält die Änderung eine Datenbank-Migration? Dann: Migration als Datei mit Rückweg, erst anwenden, dann mergen. Nie umgekehrt.
4. Checks grün? Nie mit roten Checks, nie erzwingen.
5. Verdikt je Stand ablegen: durchlassen / blockieren mit Befunden (Datei, Zeile, Grund). Befunde über mittlerem Risiko blockieren.
6. Deploys brechen laufende Arbeit ab? Merge ins ruhige Zeitfenster legen.

Reine Doku-Änderungen dürfen mit einem kurzen Blick durch.
