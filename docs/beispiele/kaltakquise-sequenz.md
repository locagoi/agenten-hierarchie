# Beispiel: Kaltakquise-Sequenz mit Variante A und B

> Fiktives Beispiel (Werkplan GmbH). Firma, Personen und Zahlen sind erfunden.

## Eingabe

Auftrag auf dem Board, an `outbound-kaltakquise`:

```
Sequenz für Geschäftsführer Maschinenbau, 50 bis 250 MA, Signal: Stellenanzeige
"Instandhalter (m/w/d)" in den letzten 4 Wochen. Magnet: Wartungs-Checkliste.
Ziel: unter 400 Mails je positiver Antwort.
```

Gelesen: `firma/angebot.md`, `firma/zielgruppe.md`, `firma/belege.md`, `firma/stil.md` (Sie-Form in Kaltmails), `docs/lernen/erkenntnisse.md`.

## Ergebnis

### Hypothesen

| Arm | Aufhänger | Hypothese | Was wirklich anders ist |
|---|---|---|---|
| A | Stellenanzeige Instandhalter | Wer Instandhalter sucht, spürt gerade, dass Wissen an einzelnen Köpfen hängt. Die Checkliste trifft genau diesen Schmerz. | Thema: Personalengpass |
| B | Ungeplanter Stillstand | Geschäftsführer reagieren stärker auf Kosten eines Stillstands als auf Personalthemen. | Anderer Aufhänger, kürzere Mails, gleicher Magnet |

Messung: Mails je echter positiver Antwort je Arm. Entscheidung erst ab 400 Mails je Arm. Davor gilt "unklar".

### Tag 0: LinkedIn-Vernetzung (A und B gleich)

```
Guten Tag Frau Muster, ich beschäftige mich viel mit Wartungsplanung
im Maschinenbau und würde mich gern vernetzen.
```

### Variante A

**Tag 2, Mail 1** · Betreff: `Instandhaltung bei Muster Maschinenbau`

```
Guten Tag Frau Muster,

Sie suchen gerade einen Instandhalter. In vielen Betrieben in Ihrer Größe
steckt das halbe Wartungswissen dann in ein oder zwei Köpfen.

Wir haben dazu eine Checkliste mit den 12 Wartungsfehlern, die am häufigsten
zu Stillstand führen. Ich würde sie auf Ihren Maschinenpark anpassen.

Soll ich sie Ihnen schicken?

Viele Grüße
Tom Beispiel
Werkplan GmbH
```

**Tag 3, Mail 2** · Antwort im selben Verlauf

```
Frau Muster, noch ein Gedanke dazu: Wenn die neue Stelle besetzt ist, hilft
ein fester Wartungsplan auch bei der Einarbeitung. Die neue Person sieht ab
Tag eins, was wann fällig ist.

Wenn die Checkliste interessant ist, antworten Sie einfach mit "ja".
```

**Tag 7, Mail 3**

```
Frau Muster, ich melde mich hier zum letzten Mal. Wenn Wartungsplanung
gerade kein Thema ist, ist das völlig in Ordnung. Falls doch, schicke ich
Ihnen die Checkliste gern.
```

### Variante B

**Tag 2, Mail 1** · Betreff: `Stillstand`

```
Guten Tag Frau Muster,

eine Frage zu ungeplantem Stillstand: Wissen Sie heute, welche drei
Maschinen bei Ihnen das größte Ausfallrisiko haben?

Wir haben eine Checkliste mit 12 typischen Wartungsfehlern dazu. Soll ich
sie Ihnen schicken?

Viele Grüße
Tom Beispiel
```

**Tag 3, Mail 2**

```
Frau Muster, kurz ergänzt: Die Checkliste ist eine Seite und in zehn
Minuten durchgegangen. Soll ich sie schicken?
```

**Tag 7, Mail 3**

```
Frau Muster, letzte Nachricht von mir zu dem Thema. Wenn es später
passt, melden Sie sich gern.
```

### Selbstprüfung (aus `/kaltakquise-entwurf`)

- [x] Klartext, keine Links, kein Tracking
- [x] Magnet als Frage, geliefert wird erst nach der Antwort
- [x] Keine Preise, keine Rechenbeispiele
- [x] Signal nur über das Thema (Stelle), nicht "ich habe gesehen, dass Sie ..." mit Klickdaten
- [x] Jede Mail unter 100 Wörter
- [x] Keine Aussage ohne Eintrag in `firma/belege.md` (hier: keine Ergebniszahl verwendet, weil `belege.md` für diese Zielgruppe noch leer ist)

Übergabe: `outbound-zustellung` (Placement-Test mit genau dieser Copy), dann `kontrolle-review`, dann Erstversand nur nach Freigabe des Menschen.

## Warum es so aussieht
- Tag 0, 2, 3, 7: fester Takt macht Arme vergleichbar.
- B ist ein anderer Aufhänger, nicht nur andere Wörter. Wortänderungen haben nie einen messbaren Unterschied gebracht.
- Keine Ergebniszahl, obwohl sie überzeugender wäre: Es gibt keinen Beleg. Ein Agent rät keine Zahl.
