#import "../dependencies.typ": *

= Interaktive Lernumgebung

Im Folgenden
wird
eine Lernumgebung
aufgebaut,
die die Interaktion
mit einem
weit verbreitetem
und für
Programmierer:innen
direkt
relevanten
IT-Sicherheitsproblem
ermöglicht.
//
In diesem
serious game
besteht die Aufgabe darin
eine
bewusst platzierte
Schwachstelle auszunutzen,
was
ein tiefes Verständnis
für die Problematik
fördern soll.


== Lernziele

// Remember
Teilnehmer:innen
sollen
diese
Sicherheitslücken
zukünftig
kennen.
//
// Understand
Sie sollen
verstanden haben,
dass
es Konsequenzen haben
wird,
wenn
eine Angreifer:in
diese Lücke
ausnutzt.
//
// Apply
Eigener Code sollte
zukünftig
frei von
diesem Problem
sein.
//
// Analyze
Sie sollen
in der Lage sein
eigenen oder fremden
Code
daraufhin
zu analysieren
ob er
diese oder eine ähnliche Sicherheitslücke
enthält.
//
// Evaluate
Sie
sollten
bewerten,
ob
verwundbarer Code
ausgenutzt werden kann.
//
// Create
In einer
etwaigen
Diskussion
sollen sie ihr Gegenüber
davon überzeugen können,
dass
diese Lücke
entfernt werden
muss.

#figure(
  muchpdf(
  read("../figures/bloomsPyramideLernzieleSicherheitsluecke.pdf", encoding: none),
  width: 80%,
  alt: "Erneute pramidenförmige Darstellung der Stufen von Blooms Taxonomie.
  Diesmal ergänzt durch die Lernziele,
  die Sicherheitslücke zu kennen und
  ein Problembewusstsein zu haben.
  Diesen Fehler nicht in eigenem Code zu machen
  und ihn in eigenem oder fremden Code zu finden.
  Eine vorhandene Lücke auf Mißbrauchrisiko bewerten
  und im Zweifelsfall jemanden davon zu überzeugen,
  das Problem zu beseitigen."
  ),
  caption: [Lernziele in Relation zu Blooms Pyramide, nach @andersonTaxonomyLearningTeaching2001. Eigene Darstellung],
) <pyramideLernziele>


=== Broken Access Control

Schwachstellen
werden
von der
MITRE-Organisation
in einer
"Common Weakness Enumeration"-Liste (CWE)
gesammelt.
@CWEList4.16
//
In den
OWASP "Top 10 Web Application Security Risks"
werden Sicherheitslücken
kategorisiert
und
diese
Kategorien
werden
wiederum
nach
Inzidenzrate
geordnet.
@OWASPTopTen2021_de
//
Auf
Platz 1
der schwerwiegendsten Sicherheitsrisiken
im Betrachtungszeitraum
#footnote[Die nächste Ausgabe der "Top 10 Web Application Security Risks" wurde für "die erste Jahreshälfte 2025" angekündigt. @OWASPTopTen2021]
2017 -- 2021
befinden
sich Fehler
der Kategorie
"Mangelhafte Zugriffskontrolle".
//
Zugriffskontrollen bezeichnet
Mechanismen
die sicherstellen,
dass
Nutzer:innen
nur innerhalb ihrer vorgesehenen Berechtigungen handeln können.
//
Werden diese Zugriffskontrollen mangelhaft implementiert,
kann eine erfolgreiche Ausnutzung
dazu führen,
dass eine
Angreifer:in
Daten unbefugt
lesen, ändern oder zerstören
kann
oder eine Anwendung dazu bringen kann,
Dinge zu tun,
die die Nutzer:in nicht können sollte.
//
@A01:2021_de


== Szenario

Die Entstehung der Umgebung soll
wenigstens grob
der Entstehung einer realen Anwendung folgen.
//
In der anzugreifenden Umgebung soll sich eine
fiktive Anwendung befinden,
die an und für sich korrekt funktioniert,
aber
unter Ausnutzung der Sicherheitslücken
zu einem
(aus Sicht einer fiktiven Organisation)
fehlerhaften Verhalten gebracht werden kann.

Für dieses Szenario wird von einer
Entwickler:in ausgegangen,
die eine
Kommuikationsplattform betreiben möchte.
//
Angelehnt an die bestehenden Plattform "Reddit",
bei der sich
Nutzer:innen
zu vielen verschiedenen Themen öffentlich austauschen können,
soll die neue Plattform
einen themenbezogenen Austausch
in
vertraulichen
Kleingruppen
ermöglichen.
//
Diese Kleingruppen sind im Gegensatz zu Reddit
nicht öffentlich,
sondern können
nur auf Einladung
eines Mitglieds
betreten werden.

=== Glesn

Die Entwickler:in
kreiert die Konkurrenzplattform
"Glesn"//
#footnote[Bayrisch, vulg. für "gelesen", Anspielung auf "reddit", was selbst durch ein Wortspiel mit "I read it on reddit." entstanden ist @faqReddit2006.],
//
welche
Anwender:innen
verspricht,
sich innerhalb eines geschützten "Space" mit Anderen austauschen zu können.
//
Innerhalb der Spaces können
Anwender:innen
"Artikel" schreiben,
die von Anderen nur gelesen werden können,
wenn diese selbst Teil des Space sind,
in dem der Artikel
veröffentlicht
wurde.

/*
TODO:
Architektur 
- Relationsmodell
	- User - Spaces - Artikel
- kurze Beschreibung Django
	- inklusive Besonderheit Django Admin
*/

Das initiale Setup der Anwendung ist einfach:
//
Da die Anwendung beim ersten
Deployment noch keine Anwender hat,
kann der erste Account
--~den ja wahrscheinlich die Entwickler:in anlegen wird~--
Administrationsrechte
//auf der Django-Datenbank
erhalten.
//
Mit diesem Account können nun
erste
Spaces
und Artikel
angelegt
werden
und die Plattform
kann
für weitere Anwender:innen
freigegeben
werden.

=== Sicherheitslücken in der Anwendung

==== Auslesen von Meta-Daten trotz fehlender Zugriffsberechtigung

Direkte Anfrage nach Ressourcen, die aus der GUI nicht erreichbar wären.
@CWE425

Auslesen von Meta-Daten, trotz fehlender Zugriffsberechtigungen. @CWE200

==== Rechteausweitung

Rechte-Ausweitung (innerhalb der Anwendung):
//
ermöglicht durch fehlende Authorisationsprüfung. @CWE862

Rechte-Ausweitung (innerhalb der Plattform):
//
Initial-Modus, aktiviert, wenn keine Anwender registriert sind.
//
Der erste registrierte Account wird dann mit Administrationsrechten ausgestattet.
//
Der Zugriff zu diesem initial-Modus ist nicht eingeschränkt. @CWE1188
//

In Kombination mit einem unsicheren Anwender-Verwaltungs-Endpunkt,
der es
ohne Autorisation @CWE306
erlaubt Anwender zu löschen,
kann ein Angreifer alle bestehenden Anwender,
inklusive des bestehenden Administrations-Anwenders,
löschen,
um anschließend einen neuen Account anzulegen.
//
Diesem wird nun von der Anwendung Administrationsrechte zugesprochen.

== Angedachter Lösungsweg der Challenge

Ausnutzen der platzierten Schwachstellen innerhalb der Anwendung
- Enumerieren der vorhandenen Artikel
- Auslesen der Meta-Daten (Spaces & Space-ID, Autoren und Autoren-ID)
- Rechte-Ausweitung innerhalb der Anwendung durch selbst-hinzufügen zu Administrator-Space, an der GUI vorbei, ermöglicht durch fehlende Autorisationsprüfung

Ausnutzen des initialen Setup-Modus
- Löschen aller Anwender
- Im Initialen Modus neuen Account
- mit diesem in die Administartions-Datenbank

=== Tipps und Hinweise für Lösungsweg

- Der erste Beitrag, der sichtbar ist, hat die ID 2
	- Hinweis darauf, dass es einen Eintrag mit der ID 1 geben müsste.

- Der erste Beitrag (ID 1) ist eine vom (simulierten Admin) angelegte Notiz an andere Admins
	- Der Admin drückt Freude darüber aus, wie einfach das initiale Setup dadurch war, dass das System einfach dem ersten User-Account Administrationsrechte gibt.

== Realitätsbezug

2024 September: KIA
- News
	- Spiegel: #link("https://www.spiegel.de/netzwelt/gadgets/kia-hacker-konnten-per-app-autos-orten-und-fernsteuern-a-dc1f2592-d3b5-4619-89bf-4cfdd74c7804")[Hacker konnten koreanische Autos per App orten, starten, hupen lassen]
	- Heise: #link("https://www.heise.de/news/Kia-Luecke-in-Webportal-erlaubte-Forschern-Fernzugriff-auf-Autos-9956342.html")[Kia: Lücken in Webportal erlaubten Forschern Fernzugriff auf Autos]
	- Der Standard: #link("https://www.derstandard.de/story/3000000238639/schwere-sicherheitsluecken-bei-kia-ermoeglichten-fernortung-und-start-von-millionen-autos")[Schwere Sicherheitslücken bei Kia ermöglichten Fernortung und Start von Millionen Autos]
- Blog (Originalquelle)
	- Sam Curry: #link("https://samcurry.net/hacking-kia")[Hacking Kia: Remotely Controlling Cars With Just a License Plate]

TODO: da werden sich schon noch Beispiele finden lassen

== Beta-Test


Hamburger CTF-Team Cyclopropenylidene (C3H2) 

- Feedback: ID für ersten sichtbaren Artikel sollte 2 sein, als Hinweis darauf, dass es einen weiteren Artikel (ID 1) gibt.
	- -> so umgesetzt
- Technisches Problem aufgedeckt: Ein Beta-Tester hat nicht nur einen Account angelegt und diesem (wie angedacht) einen Account Zugriff auf den versteckten Space gegeben, sondern mit Hilfe eines http replay Proxy die Sicherheitslücke so ausgenutzt, dass alle Accounts Zugriff auf den versteckten Space hatten. das hat dafür gesorgt, dass eine Beta-Testerin, die sich zuvor einen Account angelegt hat, aber die Sicherheitslücke noch nicht gefunden hat, plötzlich ohne eigenes zutun Zugriff auf den versteckten Space hatte.
	- -> Gelernt: Diese Challenge muss pro Person/Team als eigene Instanz bereitgestellt werden.


== Durchführung Workshop

- Workshop Week an HAW September 2024
	- ca. 12 Teilnehmende
	- Studierende
		- Informatik
			- Bachelor
			- Master
		- Sonstige
	- Evaluationsbögen
  - TODO: Ergebnis der Evaluationsbügen nutzbar?? (Jedenfalls nicht für direkten Vergleich!) (Eventuell noch ein Workshop notwendig??)

- IT-Security Konferenz "Nights of open Knowledge" (NOOK)
	- 34 Teilnehmende
	- Allgemeines Feedback
		- Skala:
			- "auf jeden Fall" / "eher ja" / "eher nein" / "auf keinen Fall"
		- Antworten
			- "War der Vortrag interessant?"
				- 12/12: "auf jeden Fall"
			- "Hat der Vortragende das Thema beherrscht?"
				- 12/12: "auf jeden Fall"
			- "Konnten Fragen beantwortet werden?"
				- 9/12 "auf jeden Fall"
				- 3/12 "eher ja"
			- "War das Material (Folien u.ä.) ansprechend?"
				- 10/12 "auf jeden Fall"
				- 2/12 "eher ja"
	- Es hat keine inhaltliche Evaluation stattgefunden
