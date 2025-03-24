#import "../dependencies.typ": *

= Motivation & Vorhaben

Eine Möglichkeit,
die Sicherheit von IT-Systemen insgesamt zu verbessern,
soll die Erhöhung des Problembewusstseins sein,
welche Auswirkungen es haben kann,
wenn
unvorsichtige
Programmierung
zu
unsicherem Code führt.
//
Die entstehenden Probleme
sollen
Programmierer:innen,
also
den Personen,
die potentiell problematischen Code erzeugen,
greifbar
gemacht werden.
//
Sie
sollen
selbst die Erfahrung machen,
wie leicht derartige Sicherheitslücken
unter Umständen
ausgenutzt werden können,
was
wiederum
dafür werben
soll,
eventuell bestehende
Vorgaben
des
#[#set text(lang: "en"); #emph[secure coding]]
oder
#[#set text(lang: "en"); #emph[best practices]]
einzuhalten.


Basierend auf
der Annahme,
dass Lernende am erfolgreichsten sind,
wenn sie sich aktiv mit dem Lerngegenstand beschäftigen,
sollten
Programmierer:innen
sich möglichst intensiv mit Sicherheitslücken beschäftigen.
//
Durch Anwendung
der
ICAP-Methode
#[#set text(lang: "en"); (Interactive, Constructive, Active, Passive)]
@chiICAPFrameworkLinking2014
soll erreicht werden,
dass
Entwickler:innen
ein
vertieftes
Verständnis
gemäß
Blooms (überarbeiteter) Taxonomy @andersonTaxonomyLearningTeaching2001
von
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
diese und ähnliche
Unachtsamkeiten
nicht nur
nicht mehr
in eigenem Code
produzieren,
sondern auch
in fremden Code
identifizieren
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
entleihen.
//
Als eines
der
in der
Aus- und Weiterbildung
verwendeten Vorgehen
kann
#[#set text(lang: "en"); #emph[capture the flag]]
@ctfTimeOrgCtfWtf
verwendet werden,
um
als
#[#set text(lang: "en"); #emph[serious game]]
@costaDesigningSeriousGame2023
das
IT-Sicherheits-Problem-?bewusstsein
// bei Programmierer:innen
zu schärfen.


In dieser Arbeit wird
eine Testumgebung entwickelt,
in der mit einem System mit
mangelhafter Zugriffskontrolle
(die
weitverbreitetste Sicherheitslücke
im Internet
@OWASPTopTen2021_de)
selbst
experimentiert
werden kann.
//
Diese
#[#set text(lang: "en"); #emph[challenge]]
wird
in einem Workshop verwendet,
um Teilnehmer:innen
in dieses Problemfeld
einzuführen.

// === Anforderungen an eine Challenge
// - On the Requirements for Serious Games geared towards Software Developers in the Industry @espinhagasibaRequirementsSeriousGames2019

// === Evaluation
// - Erfüllungsgrad der Anforderungen
// - Vergleich mit anderen CTF
// 	- (Werte für andere CTF nicht selbst ermittelt: entommen aus Anforderungspaper)
