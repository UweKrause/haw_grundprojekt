#import "../dependencies.typ": *

= Didaktische Basis

/*
TODO: Rückbezug
"Wie schafft man es dieses Problem (aus Kap 1) anzugehen?"
-> man schaut sich Lernkonzepte an
*/

Verschiedene
didaktische Konzepte
bekräftigen,
dass Lernende am erfolgreichsten sind,
wenn sie sich aktiv mit dem Lerngegenstand beschäftigen.

== Blooms Taxonomie

In Blooms (überarbeiteter) Taxonomie etwa gibt es verschiedene
aufeinander aufbauende
Ebenen des Verständnis,
oft dargestellt als eine Pyramide.
//
Die Basis bildet die Verständnis-Stufe des
"Erinnerns",
der Fähigkeit relevantes Wissen aus dem Langzeitgedächtnis abzurufen.
//
Darauf aufbauend folgt das
"Verstehen",
das es ermöglicht
Wissen zusammenzufassen, zu interpretieren, zu vergleichen und zu erklären.
//
Nach der Stufe des 
selbst "Anwenden",
steht das Vermögen
Sachverhalte
zu
"analysieren",
also das Material in seine Einzelteile zu zerlegen,
übergreifende Struktur und Zweck zu ermitteln
sowie Muster zu erkennen.
//
Erst wer dazu in der Lage ist,
wird auch
"bewerten" können,
sich ein Urteil bilden
und Bestehendes kritisieren können.
//
An der Spitze der Taxonomie steht die Fähigkeit
angeeignete Elemente zusammenzufügen,
um Neues zu erschaffen.
//
@andersonTaxonomyLearningTeaching2001

#figure(
  muchpdf(
  read("../figures/bloomsPyramide.pdf", encoding: none),
  width: 80%,
  alt: "Pramidenförmige Darstellung der Stufen von Blooms Taxonomie.
  Die Basis bildet die Stufe 'remember'.
  Darauf aufbauend folgen die Stufen
  'understand', 'apply', 'analyze' und 'evaluate'.
  Die Spitze der Üyramide bildet die Stufe 'create'.
  "
  ),
  caption: [Blooms Pyramide, nach @andersonTaxonomyLearningTeaching2001. Eigene Darstellung],
) <pyramide>

== ICAP (Interactive - Constructive - Active - Passive)

Bei dem
ICAP-Ansatz
//(Interactive - Constructive - Active - Passive)
werden
aufbauend auf
dem
Vorgehensmodell des "aktiven Lernens"
vier Modelle
der kognitive Lernaktivitäten
definiert
und Wege vorgeschlagen,
wie
Wissensveränderungsprozesse angestoßen werden sollten.
//
Zwar kann Wissen durch das passiven Empfangen von Informationen
durch Zuhören oder Lesen
aufgebaut werden,
dies stellt aber die niedrigste Stufe dar.
//
Die Wissensaufnahme kann aktiver gestaltet werden,
zum Beispiel indem
beim Zuhören zusätzlich Notizen gemacht werden
oder beim Lesen Textstellen angestrichen werden
und einzelne Passagen zusammengefasst werden.
//
Konstruktives Verarbeiten ist
über die Aufnahme von Erlerntem hinausgehendes
Generieren von Dingen,
beispielsweise wenn
in einer Vorlesung Fragen gestellt werden
oder
zu einem beschriebenen Zusammenhang eine Zeichnung angefertigt wird.
//
Die höchste Stufe des Modells
ist die Interaktion mit dem Lerngegenstand,
beispielsweise der Verteidigung eines Standpunkts in einer Gruppendiskussion
bei der neue Ideen entstehen.
//
Diesen
vier Lernaktivitäten
werden
die jeweilig
zu erwartenden kognitiven Ergebnisse gegenübergestellt:
//
Passiv erlangtes Wissen kann im wörtlich und im gleichen Kontext wiedergegeben werden,
wohingegen aktiv Erlangtes auf ähnliche Kontexte angewendet werden kann.
//
Einmal generiertes Wissen kann in neuen Situationen angebracht werden,
Kenntnis über das erlernte Konzept erlaubt Interpretation und Erklärungen,
auch unter geänderten Rahmenbedingungen.
//
Das tiefste Verständnis ist nach der Interaktion zu erwarten,
potentiell können
neue Produkte, Interpretationen und Ideen entstehen.
@chiICAPFrameworkLinking2014


/*
TODO: (?) Vergleich ICAP <> Bloom?
wie in @chiICAPFrameworkLinking2014 ?
Wenn ja, dann auf jeden Fall Hinweis, dass Zuordnungen natürlich nicht immer 100% trennscharf sind!
*/

== Methoden der Wissensvermittlung


Die Essenz und das in diversen weiteren Ansätzen
immer wieder zu beobachtender Lernmuster,
// wie
// "Active Student",
// "Students Decide",
// "Honor Questions",
// "Test Tube",
// "Try It Yourself",
// "Prefer Writing",
// "Role Play",
// "War Game",
// "Invisible Teacher",
ist die 
möglichst aktive
Beschäftigung mit dem Lerngegenstand
durch die Lernenden selbst.
@ecksteinPatternsActiveLearning2002
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
Programmierer:innen // TODO: Gender einheitlich
sich
//interaktiv
mit den
abstrakten Themen
der
IT-Sicherheit und sichererer Programmierung
beschäftigen?


Wird versucht
Konzepte der IT-Sicherheit
über Vorträge oder Webinare zu IT-Sicherheit
zu vermitteln,
stellen diese
(sofern sie denn überhaupt wahrgenommen werden; // TODO: Referenz auf geringen Lernerfolg?
ungeteilte Aufmerksamkeit vorausgesetzt)
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
Code reviews // TODO: Referenz zu Code Reviews? Ggf. sogar mit Hinweis auf Lernerfolg?
das Hervorheben von
fehlerhaftem Code sein.
//
Werden Problembereiche auf diese Art erkannt,
entspricht dies dem "Verstehen" auf der Bloomschen Skala.
//
Es darf erwartet werden,
dass das Wissen genug abstrahiert wurde,
um eine Chance darauf zu haben,
ähnliche Fehler in ähnlichen Kontexten wieder entdecken zu können.
//
Um sich 
konstruktiv mit IT-Sicherheit zu beschäftigen,
bieten sich sogenannte Hackathons an, // TODO: Referenz? Ggf. sogar mit Lernbezug?
bei denen Sicherheitsrelevante Systeme oder Komponenten
entwickelt werden.
//
Eine Person
die bereits einmal etwa ein Login-System entworfen oder implementiert hat,
wird
benötigte Verfahren nicht nur angewendet haben,
sondern wahrscheinlich
das Wissen auch in seine Bestandteile zerlegt
und zumindest Teile davon analysiert haben.
//
Sie sollte diese Fähigkeit auch unter geänderten Rahmenbedingungen anwenden können.
//
Um die Stufe des tiefsten Verständnis zu erreichen,
ist die Interaktion mit einer Sicherheitslücke selbst
angebracht,
etwa durch
das Verteidigen
oder
Angreifen eines Systems
mit einer Sicherheitslücke.
//
Hat eine
Angreifer:in // TODO: Gender einheitlich
es geschafft,
eine Sicherheitslücke selbst auszunutzen,
hat sie bewiesen das Wissen nicht nur analysiert,
sondern auch umfassend bewertet
sowie mit dem erfolgreichem Angriff etwas erschaffen zu haben.
//
Und sei dies nur in einer simulierten Umgebung geschehen,
so darf trotzdem davon ausgegangen werden,
dass das zugrundeliegende Problem wirklich verstanden wurde.

// TODO: besser Überschrift
== Serious Games ermöglichen Interaktion

Die skizzierte
Form der Interaktion
werden auch als
"Serious Games"
bezeichnet.
//
Allgemein
werden diese entwickelt,
um über reale Themen wie
Gesundheitsfürsorge, Sicherheit oder Umweltfragen
aufzuklären, zu schulen oder zu informieren.
@cooperSoftwareEngineeringGames2023
//
Wenn
Serious Games
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
realistischen Herausforderungen.
@costaDesigningSeriousGame2023

Werden auf diese Art IT-Security Techniken vermittelt,
findet dies üblicherweise im Rahmen von
"capture the flag" (ctf)
statt,
einer Art
IT-Security-Wettbewerb.
//
Hier gibt es 
verschiedene Typen von
Aufgaben ("challenges"),
beispielsweise im "Jeopardy-style",
bei dem es für gelöste
Aufgaben in unterschiedlichen Kategorien Punkte zu gewinnen gibt.
@ctfTimeOrgCtfWtf
//
Aufgaben in der Kategorie "Web"
beispielsweise
bestehen häufig aus
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
//
Üblicherweise ist zu beobachten,
dass
Teilnehmende
großes Interesse
am wettbewerbsorientierten Lernen
zeigen
@siaminaminTeachingCyberSecurity2016
und
"capture the flag"-Aufgaben
die Interaktion von Lernenden
mit dem Lerngegenstand
erhöhen,
was zu besser entwickelten
Fähigkeiten
im Umgang mit Sicherheitslücken
führt
@leuneUsingCapturetheFlagEnhance2017.

Capture the Flag
als
Eigenart der Serious Games
bieten Teilnehmenden
eine Möglichkeit in einer
extra hierfür bereitgestellten Umgebungen
den Umgang mit Sicherheitslücken zu erlernen.
//
Sie sind 
also ein geeignetes Mittel,
um Kenntnisse im Bereich IT-Sicherheit
zu vermitteln.


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

