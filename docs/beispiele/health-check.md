# Beispiel: Health-Check-Bericht

> Fiktives Beispiel. Zeiten und Zahlen sind erfunden.

## Eingabe

Cron alle zwei Stunden: `claude -p "/health-check" --agent kontrolle-health`. Geprüft werden geplante Läufe (Logs in `ops/logs/`), Board, Tagesziele, Inboxen.

## Ergebnis, Fall 1: alles gesund

Eine Zeile in `ops/logs/health.log`, sonst nichts:

```
2026-11-14 10:00 · gesund · 6 Läufe ok · Board 3 in Arbeit, 0 Hänger · Tagesziele 2/2 im Soll
```

## Ergebnis, Fall 2: Befund

Einmal neu angestoßen (Datei in `ops/inbox/outbound-firmensuche/`), danach weiter hängend. Befund an `ops/inbox/master/`:

```
Health 14.11. 12:00 · 2 Befunde

1. Was: Tagesziel neue Kontakte 0 von 40 (Sequenz Maschinenbau)
   Beleg: ops/logs/firmensuche.log letzter Eintrag 13.11. 07:02, Fehler "Datenquelle: 401"
   Vorschlag: Zugang zur Datenquelle erneuern (Mensch), danach Lauf neu starten. Bis dahin
   läuft die Sequenz mit dem Vorrat von gestern weiter (noch 2 Tage).

2. Was: Aufgabe 014 "Variante B Placement" seit 52 h in-arbeit
   Beleg: ops/board.md, Datei ops/tasks/2026-11-12-placement-b.md unverändert seit 12.11.
   Vorschlag: an outbound-zustellung neu vergeben, Frist morgen.
```

Kritisch wäre gewesen: Versand gestoppt, doppelter Versand, Kunde betroffen. Dann zusätzlich sofort an den Menschen.

## Warum es so aussieht
- Still, wenn alles gesund ist. Sonst wird der Bericht nicht mehr gelesen.
- Je Befund: was, Beleg, Vorschlag. Kein "irgendwas stimmt nicht".
- Der Health-Agent repariert nicht selbst, sendet nicht und löscht nicht.
- Erst einmal selbst neu anstoßen, dann melden. Zum Menschen nur, was kritisch ist.
