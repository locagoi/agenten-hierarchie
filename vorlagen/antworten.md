# Antwort-Vorlagen je Kategorie

Für `outbound-antworten` und den Skill `/antworten-sortieren`. Immer zuerst den Vorverlauf lesen, du oder Sie spiegeln, ihre Frage zuerst beantworten. Alles bleibt Entwurf, bis der Mensch freigibt.

Kategorie bestimmt? Dann die passende Vorlage, angepasst auf den Verlauf. Nie wörtlich zweimal dieselbe Antwort an dieselbe Firma.

---

## 1. Positiv ("Ja, schicken Sie gern", "Klingt interessant")

**Ziel:** Termin plus Qualifizierung. Kein Deal im CRM vor dem Termin.

```
Danke, <Vorname/Nachname>. <Magnet> schicke ich Ihnen <heute/bis morgen>.

Damit ich es auf Sie zuschneide, zwei kurze Fragen:
1. <Qualifizierungsfrage 1, z. B. "Wie planen Sie das heute?">
2. <Qualifizierungsfrage 2, z. B. "Wer kümmert sich darum?">

Wenn Sie mögen, gehen wir es in 20 Minuten gemeinsam durch.
Passt Ihnen <Tag, Uhrzeit> oder <Tag, Uhrzeit>?
```

Warum: Der Magnet ist der Aufhänger, das Ziel ist das Gespräch. Zwei Fragen zeigen, ob es ein echtes Positiv ist.

## 2. Später ("Melden Sie sich im Frühjahr", "Gerade keine Zeit")

**Ziel:** Datum festhalten, Tür offen lassen. Wiedervorlage im CRM, Sequenz stoppt.

```
Verstanden, danke für die offene Antwort. Ich melde mich <konkreter Monat> wieder.

Darf ich Ihnen <Magnet> trotzdem schon schicken? Dann haben Sie es, wenn es passt.
```

Warum: "Später" ohne Datum heißt nie. Mit Datum wird es eine Wiedervorlage.

## 3. Kein Bedarf ("Kein Interesse", "Haben wir schon")

**Ziel:** sauber schließen, eine Lernfrage. Nicht überzeugen.

```
Danke für die klare Antwort, dann melde ich mich nicht mehr dazu.

Eine Frage, nur damit ich lerne: Ist das Thema bei Ihnen schon gelöst, oder
einfach gerade nicht wichtig?
```

Warum: Diskutieren kostet Ruf. Die Antwort auf die Lernfrage schärft die Zielgruppe (`outbound-zielgruppe`).

## 4. Falsche Person ("Bin nicht zuständig", "Wenden Sie sich an ...")

**Ziel:** richtige Person finden, mit Bezug auf die Empfehlung.

Antwort an die falsche Person:
```
Danke für den Hinweis. Wer kümmert sich bei Ihnen um <Thema>? Dann schreibe
ich direkt dort hin und nenne Sie gern, oder lasse Sie heraus, wie Sie möchten.
```

Erste Nachricht an die genannte Person (erst nach Vorverlauf-Prüfung):
```
Guten Tag <Name>, <Vorname Nachname der empfehlenden Person> hat mich an Sie
verwiesen. Es geht um <Thema in einem Satz>. Soll ich Ihnen <Magnet> schicken?
```

Warum: Eine Empfehlung von innen wirkt stärker als jede Kaltmail. Die neue Person kommt nicht in die Kaltsequenz.

## 5. Abmeldung ("Bitte keine Mails mehr", "Abmelden", "Löschen Sie meine Daten")

**Ziel:** sofort Sperrliste, kurze Bestätigung, kein Verkaufssatz.

```
Ist erledigt, Sie erhalten keine weiteren Nachrichten von uns.
```

Sofort, ohne Freigabe: Adresse und Domain-Kontakt auf die Sperrliste, Sequenz stoppen. Bei "Löschen Sie meine Daten" zusätzlich Meldung an den Menschen (Recht, harter Stopp).

Warum: Eine weitere Mail nach einer Abmeldung ist ein Rechtsrisiko und schadet der Zustellung.

## 6. Frage nach Preis ("Was kostet das?")

**Ziel:** Frage ehrlich beantworten, dann ins Gespräch.

Wenn in `firma/angebot.md` ein Preis oder eine Preisspanne steht:
```
<Preis oder Spanne genau wie in firma/angebot.md>, je nachdem <wovon es abhängt,
aus firma/angebot.md>. Damit ich Ihnen eine genaue Zahl nennen kann: <eine Frage
zum Umfang>?

Am schnellsten geht es in 15 Minuten, passt <Tag, Uhrzeit>?
```

Wenn dort kein Preis steht oder "auf Anfrage":
```
Das hängt vor allem von <Faktor aus firma/angebot.md> ab. Ich nenne Ihnen gern
eine konkrete Zahl, sobald ich <was fehlt> kenne. Passt Ihnen ein kurzer Termin
am <Tag, Uhrzeit>?
```

**Harte Regel:** Nie einen Preis raten, schätzen oder "ab ca." erfinden. Steht keiner in `firma/angebot.md`, Lücke an `ops/inbox/master/` melden. Warum: Im Test hat ein Agent einen Preis geraten. Ein genannter Preis ist beim Interessenten gesetzt und lässt sich nicht zurückholen.

---

## Automatische Antworten
Abwesenheitsnotiz: Sequenz läuft weiter, ggf. Rückkehrdatum abwarten. Zählt nie als Antwort oder Positiv.
