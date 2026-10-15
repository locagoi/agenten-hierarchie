# Beispiel: Morgen-Briefing

> Fiktives Beispiel (Werkplan GmbH). Zahlen sind erfunden.

## Eingabe

Cron um 7:30 startet `claude -p "/morgen-briefing"`. Der Master-Agent liest Board, Inboxen und `firma/kennzahlen.md` und zählt selbst nach.

Was er dabei findet (nicht Teil des Briefings):
- Ziel: 20 Erstgespräche im November. Stand 14.11.: 6 gebucht.
- Arm A: 820 Mails, 2 echte Positive (410 Mails je Positiv). Arm B: 790 Mails, 1 Positiv.
- Zwei Postfächer zweimal unter 50 % Posteingang.
- Ein Angebot über der Rabattgrenze wartet auf Freigabe.
- 14 Aufgaben fertig, 3 in Arbeit, 1 hängt seit 50 Stunden (bereits neu angestoßen).

## Ergebnis

```
Fortschritt: Erstgespräche November: 0 → 6 → 20, Prüfdatum 30.11. Hinter Plan: nötig wären 9.
Engpass: Zu wenig Positive je Mail (410 und 790 Mails je Positiv), zwei Postfächer verbrannt.
Entscheidungen (max. 3):
1. Zwei verbrannte Postfächer ersetzen, zusammen 12 € im Monat? · Empfehlung: ja · Folge bei Nein: Tagesvolumen sinkt um 20 %.
2. Arm B stoppen und durch Lookalike der 3 Positiven ersetzen? · Empfehlung: ja · Folge bei Nein: Arm B läuft bis 400 Mails mehr, Entscheidung in 5 Tagen.
3. Angebot Muster Maschinenbau mit 15 % Rabatt freigeben (Grenze 10 %)? · Empfehlung: nein, 10 % plus früherer Start · Folge bei Nein: Entwurf mit 10 % liegt bereit.
```

## Warum es so aussieht
- Schlechte Zahl zuerst und klar ("hinter Plan").
- Kein "erledigt"-Katalog. Die 14 fertigen Aufgaben stehen im Board.
- Der Hänger taucht nicht auf: er gefährdet kein Ziel und wurde bereits neu angestoßen.
- Jede Entscheidung ist ein harter Stopp (Geld, Skalieren/Stoppen, Rabatt) und mit Ja oder Nein beantwortbar.
- Der Preis der Postfächer steht in `firma/kennzahlen.md` als freigegebenes Budget. Ohne diesen Eintrag stünde dort "Preis unbekannt" statt einer Zahl.
