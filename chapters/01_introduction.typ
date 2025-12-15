#import "../dependencies.typ": *

= Motivation & Vorhaben

Erfolgreiche Angriffe
auf IT-Systeme verursachen
durch
Geschäftsunterbrechung
und
Wiederherstellungszeiten,
Reputationsverlust
und
eventuelle
Bußgelder
enorme Kosten.
//
Aktuell wird von
einer durchschnittlichen Schadenshöhe
von
8,79~Millionen
#footnote[
4,46 Mio. USD"Unbekannte Zero-Day-Sicherheitslücke"
plus 4,33 Mio. USD "Bekanntermaßen ungepatchte Sicherheitslücke"
@CostDataBreach
]
US~Dollar
für einen
auf eine Sicherheitslücke
zurückführbaren
Datenschutzverstoß
ausgegangen
@CostDataBreach.
//
Da
die Ursachen für Sicherheitslücken in
IT-Systemen
unsichere Programmierung
oder
Programmierfehler
sind,
kann die Verbesserung der
Qualität von Programmcode
die Eintrittswahrscheinlichkeit
eines Datenschutzverstoßes
reduzieren.


Eine
Möglichkeit der Qualitätsverbesserung
--~direkt bei den
Menschen ansetzend,
die täglich
potentiell problematischen
Code
generieren~--
ist
das Schaffen
oder
Erhöhen
eines Problembewusstseins,
welche
direkten
Auswirkungen es haben kann,
wenn
durch
unvorsichtige
Programmierung
unsicherer
Code
erzeugt wird.
//
Erleben
Programmierer:innen
selbst,
wie leicht
Sicherheitslücken im Programmcode
ausnutzbar sind,
ist zu erhoffen,
dass sie mehr Verständnis
für sichere Programmiermethoden
aufbauen.
//
Basierend auf
der Annahme,
dass Lernende am erfolgreichsten sind,
wenn sie sich aktiv mit dem Lerngegenstand beschäftigen,
ist nach einer geeigneten Methode zu suchen,
mit der
Programmierer:innen
sich
möglichst intensiv mit
Sicherheitslücken beschäftigen.


Durch Anwendung
der
ICAP-Methode
#[#set text(lang: "en"); (Interactive, Constructive, Active, Passive)]
@chiICAPFrameworkLinking2014
soll erreicht werden,
dass
Entwickler:innen
ein
gemäß
Blooms (überarbeiteter) Taxonomy @andersonTaxonomyLearningTeaching2001
vertieftes
Verständnis
nicht nur einer einzelnen Sicherheitslücke,
sondern
einer
ganzen Kategorie
an Sicherheitsproblemen
erhalten.
//
Dies wiederum
soll
dafür sorgen,
dass sie
künftig
die Kompetenzen erhalten,
diese und ähnliche
Unachtsamkeiten
nicht nur
nicht mehr
in eigenem Code
zu
produzieren,
sondern auch
in fremden Code
identifizieren
zu
können.


Das Ziel soll
zwar
nicht
die Weiterbildung
von Entwickler:innen
zu
Penetrations-?tester:innen
sein,
jedoch lassen sich
Elemente
aus
verbreiteten Trainingsmethoden
von
IT-Sicherheits-Expert:innen
für den Lernprozess
der
Qualitätsverbesserung
entleihen.
//
Als eines
der
in der
Aus- und Weiterbildung
von
Penetrationstester:innen
verwendeten Vorgehen
können
Übungen
nach dem Vorbild von
#[#set text(lang: "en"); #emph[capture the flag]]
#footnote[Siehe beispielsweise
@eagleCapturetheFlagLearningComputer2004,
@mcdanielCaptureFlagCyber2016,
@tsepelisBeginnersGuideCTFs2025
]
verwendet werden.
//
Die Anwendung
dieser
#[#set text(lang: "en"); #emph[serious games]]
@costaDesigningSeriousGame2023
zeichnet sich durch einen
hohen
Interaktionsgrad aus,
weshalb
davon auszugehen ist,
dass investierte Zeit
effizient
genutzt wird,
um
das
IT-Sicherheits-Problem-?bewusstsein
von Entwickler:innen
zu schärfen.


Die
weitverbreitetste
Kategorie von Sicherheitslücke
bei der Programmierung von Internetseiten
ist
eine
mangelhafte Zugriffskontrolle
@owaspA01BrokenAccess2025.
//
Damit
die Auswirkungen
von Programmierfehlern
dieser Art
besser greifbar werden,
wird
in dieser Arbeit
eine
Internetseite
entwickelt,
die absichtlich
Fehler aus dieser Kategorie
enthält.
//
Diese
#[#set text(lang: "en"); #emph[Challenge]]
wird
in einem Workshop verwendet,
um Teilnehmer:innen
dieses Problemfeld
näherzubringen.

// === Anforderungen an eine Challenge
// - On the Requirements for Serious Games geared towards Software Developers in the Industry @espinhagasibaRequirementsSeriousGames2019

// === Evaluation
// - Erfüllungsgrad der Anforderungen
// - Vergleich mit anderen CTF
// 	- (Werte für andere CTF nicht selbst ermittelt: entnommen aus Anforderungspaper)
