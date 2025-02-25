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
@anderson_taxonomy_2001

#figure(  
  muchpdf(
  read("../figures/bloomsPyramide.pdf", encoding: none),
  width: 80%,
  alt: "Blooms Pyramide, eigene Darstellung",
  ),
  caption: [Blooms Pyramide, nach @anderson_taxonomy_2001. Eigene Darstellung],
  
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
@chi_icap_2014


/*
TODO: (?) Vergleich ICAP <> Bloom?
wie in @chi_icap_2014 ?
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
@eckstein_patterns_2002
//
Wenn
Jura-Studierende Gerichtsurteile aufarbeiten,
im Betriebswirtschaftsstudium Fallstudien bearbeitet werden
und
angehende Mediziner:innen
anhand der Begutachtung von Leichen
die Todesursache ermitteln
@eckstein_patterns_2002,
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


== Serious Games

Diese
Form der Interaktion
sind sogenannte
"ernste Spiele".
Diese werden entwickelt,
um die Spieler über reale Themen wie
Gesundheitsfürsorge, Sicherheit oder Umweltfragen
aufzuklären, zu schulen oder zu informieren.
@cooper_software_2023
//
Serious Gaming
kann
auch das Lernen
komplexer und
sehr technischen Themen erleichtern.
Konzepte der IT-Sicherheit
können ebenfalls mit
Techniken aus diesem Bereich
vermittelt werden.
//
Es können
Lernumgebungen
für konkrete
zu lernende Konzepte
geschaffen werden,
in der sich Spieler
realistischen Herausforderungen stellen.
@cooper_designing_2023

Werden bei diesen ernsten Spielen IT-Security Techniken vermittelt,
findet dies üblicherweise im Rahmen von
"capture the flag" (ctf)
statt,
einer Art
IT-Security-Wettbewerb.
//
Hier gibt es 
verschiedene Typen von
Aufgaben ("Challenges"),
beispielsweise im "Jeopardy-style",
wo es für gelöste
Aufgaben in unterschiedlichen Kategorien Punkte zu gewinnen gibt.
@noauthor_ctftimeorg_nodate
//
Aufgaben in der Kategorie "Web"
bestehen häufig aus
einem Webserver,
der den Spielern
eine Website
mit einer oder mehreren Schwachstellen
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
@computer_science_department_texas_tech_university_teaching_2016
und
"capture the flag"-Aufgaben
die Interaktion von Lernenden
mit dem Lerngegenstand
erhöht,
was zu besser entwickelten
Fähigkeiten
im Umgang mit Sicherheitslücken
führt
@leune_using_2017
.

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


== Anforderungen an ernste Spiele

/*
TODO: Streichen
Nicht die richtige Motivation.
*/
Da (Software-) Projekte
oft aufgrund
fehlender oder ungenügender
Anforderungsanalyse scheitern
@ghanbari_utilizing_2015,
/*
TODO:Bessere Motivation finden
Motivation ist ja eigentlich sowas wie
"
um diese Potential zu heben
darf es nicht sein,
dass Challenges
falsch/unmotivierend/guessy...
sind
" TODO: positive Formulierung möglich?

TODO: Anforderungen sehr knapp zusammenfassen (Vorgriff)
Die Interaktionsgegenstand (die Challenge) muss
wohldefiniert, strukturiert, ...?
)
sein.

TODO: Satz einleiten
Damit eine solche Challenge gebaut werden kann,
*/
wurden
durch Kombination
akademischer
und industrieller
Forschung
15 Anforderungen
für 
Serious Games definiert,
die sich an
praktizierende
Software-Entwickelnde richten
@espinha_gasiba_requirements_2019
.



/* TODO: streichen
Wird später ausführlich in Tabelleaufgelsitet.
(ggf. Hinweis auf vollständige Auflistung in Tabelle X?
(Fließtext oder Fußnote?))
*/
#[
  #set text(lang: "en")
  1. "Have a clearly defined learning goal objective"
  2. "Adapted to background (job description) of participants developers"
  3. "Well defined working mechanics (e.g. which tools to use or what to do)"
  4. "Defined and progressive level of difficulty challenges"
  5. "Elicit discussions of the solutions (e.g. is there a better/simpler way to solve?)"
  6. "Provide possible solution after challenge solved"
  7. "Adapted to the skill level of participants"
  8. "Challenge includes hint that aid to arrive to the solution"
  9. "Clear, standardized and simple solution (not based on obscure knowledge)"
  10. "Planned duration of the exercise"
  11. "Explains issues arriving from interplay of different technologies or components"
  12. "Adapted to company internal secure coding guidelines and policies"
  13. "Challenges are put from the defensive perspective"
  14. "Solutions does not require specific knowledge of hacking tools"
  15. "Challenges should raise awareness on possible consequences of malicious attack"
]
