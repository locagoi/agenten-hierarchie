# Angebotsvorlage

Für `sales-angebot`. Zwei Stufen: erst das Entscheidungsangebot (Optionen), dann fehlende Infos klären, dann das finale, unterschriftsreife Angebot.

**Harte Regeln**
- **Entscheidungstermin vorher.** Kein Angebot ohne Datum, das im Gespräch vereinbart wurde. Fehlt es, wird kein Angebot geschrieben, sondern eine Rückfrage-Mail mit Terminvorschlag. Warum: Angebote ohne Datum versanden.
- **Zahlung zu Beginn.** Warum: Zahlung am Ende verschiebt das Risiko zu dir und verlängert den Start.
- **Preise und Rabatte nur aus `firma/angebot.md`.** Nie raten, nie runden, nie "ca.". Fehlt ein Wert, bleibt `<LÜCKE: ...>` stehen, und das Angebot geht nicht zur Freigabe, bevor die Lücke geschlossen ist.
- **Referenzen nur aus `firma/belege.md`** mit "Darf öffentlich: ja" oder ausdrücklicher Freigabe für dieses Angebot.
- Rechtstexte (AGB, Vertrag) nur aus freigegebenen Vorlagen, nie selbst formulieren.

---

## Stufe 1: Entscheidungsangebot

```
# Angebot für <Firma>

Entscheidungstermin: <Datum, im Gespräch am <Datum> vereinbart>

## Ausgangslage
<zwei bis drei Sätze in den Worten des Kunden, aus der Nachbereitung>

## Ziel
<Kennzahl, die sich bewegen soll, mit Ausgangswert, falls bekannt>

## Optionen
| | Option A: <Name> | Option B: <Name> |
|---|---|---|
| Umfang | <aus firma/angebot.md> | <aus firma/angebot.md> |
| Start | <Datum> | <Datum> |
| Preis | <aus firma/angebot.md> | <aus firma/angebot.md> |

Unsere Empfehlung: <Option> · weil <ein Satz, Bezug auf Ausgangslage>

## Offen bis zum finalen Angebot
- <z. B. Anzahl Standorte, Ansprechpartner Technik>

## Zahlung
Zu Beginn, <Zahlungsweg aus firma/angebot.md>.

## Nächster Schritt
Sie wählen eine Option bis <Entscheidungstermin>. Danach erhalten Sie das finale Angebot zur Unterschrift.
```

## Stufe 2: Finales Angebot

```
# Angebot für <Firma> · <Option>

Entscheidungstermin: <Datum>

## Leistung
<genau was, ab wann, in welchem Umfang>

## Preis
<Betrag aus firma/angebot.md> <Laufzeit>
<Rabatt als eine Zeile, nur wenn vereinbart und freigegeben>

## Zahlung
Zu Beginn, <Zahlungsweg>.

## Bedingungen
<Verweis auf freigegebene AGB/Vertragsvorlage>

## Nächster Schritt
Unterschrift bis <Entscheidungstermin>, Start am <Datum>.
```

## Begleitmail (Entwurf)

```
<Name>, wie besprochen das Angebot. Kurz zusammengefasst: <ein Satz Ziel>,
<Option>, Start <Datum>. Wir hatten <Entscheidungstermin> für Ihre Entscheidung
vereinbart. Wenn vorher Fragen auftauchen, rufen Sie mich gern an.
```

Nachfassen nach Versand: Tag 2, 5, 10. Nach Tag 10 ohne Reaktion: "keine Entscheidung", Wiedervorlage setzen.
