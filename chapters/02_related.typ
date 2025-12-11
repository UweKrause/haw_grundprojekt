#import "../dependencies.typ": *

= Didaktische Basis

/*
TODO: Rückbezug
"Wie schafft man es dieses Problem (aus Kap 1) anzugehen?"
-> man schaut sich Lernkonzepte an
*/

Die
gewünschte
Erhöhung
des Problembewusstseins
entspricht letztlich
einem
Dazulernen
der
Programmierer:innen.
//
Verschiedene
didaktische Konzepte
bekräftigen,
dass Lernende am erfolgreichsten sind,
wenn sie sich aktiv mit dem Lerngegenstand beschäftigen.


== Blooms Taxonomie

Gemäß Blooms (überarbeiteter) Taxonomie
@andersonTaxonomyLearningTeaching2001
werden
verschiedene
aufeinander aufbauende
Ebenen des Verständnisses
identifiziert.
//
Diese werden
oft
wie in @pyramide
als Pyramide
dargestellt.
//
Die Basis bildet das
"Erinnern",
die Fähigkeit relevantes Wissen aus dem Langzeitgedächtnis abzurufen.
//
Darauf aufbauend folgt das
"Verstehen",
das es ermöglicht
Wissen zusammenzufassen, zu interpretieren, zu vergleichen und zu erklären.
//
Die Stufe des
"Anwendens"
enthält
das selbstständige Ausführen von
Gelerntem.
//
Darauf
folgt die Fähigkeit
der "Analyse"
von Sachverhalten,
also die Zerlegung des Materials in seine einzelnen Komponenten,
Identifikation übergreifender Struktur und Zweck
sowie das Erkennen von Mustern.
//
Erst wer dazu in der Lage ist,
wird überhaupt die Grundlagen haben,
um fachlich "bewerten" zu können,
sich ein Urteil zu bilden,
bis hin dazu, Bestehendes zu kritisieren.
//
An der Spitze der Taxonomie steht die Fähigkeit
angeeignete Elemente zusammenzufügen,
um Neues zu erschaffen.


#figure(
  muchpdf(
  read("../figures/bloomsPyramide.pdf", encoding: none),
  width: 80%,
  alt: "Pramidenförmige Darstellung der Stufen von Blooms Taxonomie.
  Die Basis bildet die Stufe 'remember'.
  Darauf aufbauend folgen die Stufen
  'understand', 'apply', 'analyze' und 'evaluate'.
  Die Spitze der Pyramide bildet die Stufe 'create'.
  "
  ),
  caption: [Blooms Pyramide, nach @andersonTaxonomyLearningTeaching2001. Eigene Darstellung],
) <pyramide>


== ICAP (Interactive - Constructive - Active - Passive)

Bei dem
#emph[ICAP]-Ansatz
@chiICAPFrameworkLinking2014
werden
aufbauend auf
dem
Vorgehen des
#emph[aktiven Lernens]
vier Modelle
kognitiver Lernaktivitäten
definiert
und Wege vorgeschlagen,
wie
Wissensveränderungsprozesse angestoßen werden sollten:
//
Zwar kann Wissen durch passives Empfangen von Informationen
beim Zuhören oder Lesen
aufgebaut werden,
dies stellt jedoch die niedrigste Stufe dar.
//
Die Wissensaufnahme kann aktiver gestaltet werden,
zum Beispiel durch
das Anfertigen zusätzlicher Notizen während des Zuhörens,
dem Anstreichen von Textstellen während des Lesens
oder
durch Zusammenfassen einzelner Passagen.
//
Konstruktives Verarbeiten
erfolgt,
wenn
über die Aufnahme von Erlerntem hinausgehend
selbst etwas generiert wird,
beispielsweise wenn
in einer Vorlesung Fragen gestellt werden
oder
zu einem beschriebenen Zusammenhang eine Zeichnung angefertigt wird.
//
Die höchste Stufe des Modells
wird erst durch Interaktion mit dem Lerngegenstand erreicht,
beispielsweise durch Verteidigung eines Standpunkts in einer Gruppendiskussion,
in deren Verlauf neue Ideen entstehen.


Diesen
Lernaktivitäten
werden
die jeweilig
zu erwartenden kognitiven Ergebnisse gegenübergestellt:
//
Passiv erlangtes Wissen kann wörtlich und im gleichen Kontext wiedergegeben werden,
wohingegen aktiv Erlangtes auf ähnliche Kontexte angewendet werden kann.
//
Einmal generiertes Wissen kann in neuen Situationen angebracht werden,
wobei
Kenntnis über das erlernte Konzept Interpretation und Erklärungen erlaubt,
auch unter geänderten Rahmenbedingungen.
//
Das tiefste Verständnis ist nach der Interaktion zu erwarten:
Potentiell entstehen
neue Produkte, Interpretationen und Ideen.
@chiICAPFrameworkLinking2014


/*
TODO: (?) Vergleich ICAP <> Bloom?
wie in @chiICAPFrameworkLinking2014 ?
Wenn ja, dann auf jeden Fall Hinweis, dass Zuordnungen natürlich nicht immer 100% trennscharf sind!
*/



== Methoden der Wissensvermittlung

Die Essenz und ein in diversen weiteren Ansätzen
#footnote[
Vgl.
  #[#set text(lang: "en");
    "Active Student",
    "Students Decide",
    "Honor Questions",
    "Test Tube",
    "Try It Yourself",
    "Prefer Writing",
    "Role Play",
    "War Game",
    "Invisible Teacher",
  ]
  in
  #cite(<ecksteinPatternsActiveLearning2002>).
]
immer wieder zu beobachtende Muster
ist die
möglichst aktive
Beschäftigung mit dem Lerngegenstand
durch die Lernenden selbst.
//
Wenn
Jura-Studierende Gerichtsurteile aufarbeiten,
im Betriebswirtschaftsstudium Fallstudien bearbeitet werden
und
angehende Mediziner:innen
anhand der Begutachtung von Leichen
die Todesursache ermitteln
@ecksteinPatternsActiveLearning2002,
wie können
Programmierer:innen
sich
interaktiv
mit den
abstrakten Themen
der
IT-Sicherheit und sicheren Programmierung
beschäftigen?


Wird versucht
Konzepte der IT-Sicherheit
über Vorträge oder Webinare zu IT-Sicherheit
zu vermitteln,
stellen diese
lediglich
die niedrigste Stufe der ICAP-Skala
dar.
//
Mehr als
eine grundlegende Wissensaufnahme
ist nicht zu erwarten,
was im Bloomschen Modell
ebenfalls der untersten Stufe entspricht.
//
Eine aktivere Beschäftigung mit sicheren Programmiermethoden kann
etwa bei
#[#set text(lang: "en"); #emph[code reviews]] // TODO: Referenz zu Code Reviews? Ggf. sogar mit Hinweis auf Lernerfolg?
das Hervorheben von
fehlerhaftem Code sein.
//
Werden Problembereiche auf diese Art erkannt,
entspricht dies dem "Verstehen" auf der Bloomschen Skala.
//
Es darf erwartet werden,
dass das Wissen ausreichend abstrahiert wurde,
sodass die Chance besteht,
ähnliche Fehler in ähnlichen Kontexten erneut zu identifizieren.
//
Um sich
konstruktiv mit IT-Sicherheit zu beschäftigen,
bieten sich
#[#set text(lang: "en"); #emph[Hackathons]]
an, // TODO: Referenz? Ggf. sogar mit Lernbezug?
bei denen sicherheitsrelevante Systeme oder Komponenten
entwickelt werden.
//
Eine Person,
die bereits einmal etwa ein Login-System entworfen oder implementiert hat,
wird
benötigte Verfahren nicht nur angewendet haben,
sondern wahrscheinlich
das Wissen auch in seine Bestandteile zerlegt
und zumindest Teile davon analysiert haben.
//
Sie sollte diese Fähigkeit auch unter geänderten Rahmenbedingungen anwenden können.


Dieser Logik folgend
wird die Interaktion mit einer Sicherheitslücke selbst
zu den drei Stufen des tiefsten Verständnis führen:
//
Eine Person,
die selbst in die Rolle einer Angreifer:in geschlüpft ist
und es geschafft hat
eine Sicherheitslücke auszunutzen,
hat hierdurch bewiesen,
die Lücke nicht nur analysiert,
sondern auch umfassend bewertet zu haben.
//
Wurde
mit
diesem Wissen
sogar ein erfolgreicher Angriff erschaffen,
so darf davon ausgegangen werden,
dass das zugrundeliegende Problem wirklich verstanden wurde.


== Interaktion mit Sicherheitslücken (Serious Games)

Der Umgang mit derartigen Sicherheitslücken
sollte nicht mit Produktivsystemen ausprobiert werden.
//
Die skizzierte
Form der Interaktion
kann
aber als Thema
sogenannter
#[#set text(lang: "en"); #emph[serious games]]
behandelt werden.
//
Allgemein
werden diese entwickelt,
um über reale Themen wie
Gesundheitsfürsorge, Sicherheit oder Umweltfragen
aufzuklären, zu schulen oder zu informieren
@cooperSoftwareEngineeringGames2023.
//
Wenn
#[#set text(lang: "en"); serious games]
das Lernen
komplexer und
technischer Themen
erleichtern,
können
Konzepte der IT-Sicherheit
ebenfalls mit
Techniken aus diesem Bereich
vermittelt werden.
//
In
Lernumgebungen
für konkrete
zu lernende
Konzepte
der IT-Sicherheit
stellen
Spieler
sich
auf diese Weise
realistischen Herausforderungen.
@costaDesigningSeriousGame2023


Werden auf diese Art Techniken der IT-Security vermittelt,
findet dies oft im Rahmen von
#[#set text(lang: "en"); #emph[capture the flag]]
statt,
einer Art
IT-Security-Wettbewerb
@eagleCapturetheFlagLearningComputer2004
@mcdanielCaptureFlagCyber2016.
//
Hier gibt es
verschiedene Typen von
Aufgaben
(#[#set text(lang: "en");#emph[challenges]]),
beispielsweise im
Stil der US-Amerikanischen Quizshow
#[#set text(lang: "en");#emph[Jeopardy]],
bei der es für gelöste
Aufgaben in unterschiedlichen Kategorien Punkte zu gewinnen gibt
@tsepelisBeginnersGuideCTFs2025.
//
Aufgaben in der Kategorie "Web"
bestehen üblicherweise aus
einem Webserver,
der den Spielern
eine Website
mit einer oder mehreren
absichtlich platzierten
Schwachstellen
zur Verfügung stellt.
//
Diesen Webserver gilt es anzugreifen,
indem
die Sicherheitslücke(n)
identifiziert und ausgenutzt
werden.


Es ist zu beobachten,
dass
Teilnehmende
großes Interesse
am wettbewerbsorientierten Lernen
zeigen
@siaminaminTeachingCyberSecurity2016
und
#[#set text(lang: "en");capture-the-flag]-Aufgaben
die Interaktion von Lernenden
mit dem Lerngegenstand
erhöhen,
was wiederum zu besser entwickelten
Fähigkeiten
im Umgang mit Sicherheitslücken
führt
@leuneUsingCapturetheFlagEnhance2017.


Capture the Flag
als
Eigenart der serious games
bieten Teilnehmenden
eine Möglichkeit
anhand
extra hierfür bereitgestellter Systeme
den parktischen Umgang mit Sicherheitslücken zu erlernen.
//
Sie sind
also ein geeignetes Mittel,
um Kenntnisse im Bereich der IT-Sicherheit
zu vermitteln
und nachhaltig zu festigen.


// == Anforderungen an serious games
//
// Damit
// die eingesetzten Ressourcen
// möglichst optimal
// genutzt werden
// und
// der Interaktionsgegenstand
// auf
// das definierte Ziel
// einzahlt,
// müssen die
// Anforderungen
// an die Interaktionsumgebung
// klar formuliert sein.
// //
// Für
// Serious Games
// die sich an
// praktizierende
// Software-Entwickelnde richten
// wurden
// durch Kombination
// akademischer
// und industrieller
// Forschung
// 15 Anforderungen
// #footnote[Die Anforderungen werden gemeinsam mit der folgenden Evaluation in @tabEvaluation aufgelistet.]
// definiert.
// @espinhagasibaRequirementsSeriousGames2019
