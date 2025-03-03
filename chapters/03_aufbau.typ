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
  alt: "Erneute pyramidenförmige Darstellung der Stufen von Blooms Taxonomie.
  Diesmal ergänzt durch die Lernziele,
  die Sicherheitslücke zu kennen und
  ein Problembewusstsein zu haben.
  Diesen Fehler nicht in eigenem Code zu machen
  und ihn in eigenem oder fremden Code zu finden.
  Eine vorhandene Lücke auf Missbrauchsrisiko bewerten
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
Kommunikationsplattform betreiben möchte.
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

// Das initiale Setup der Anwendung ist einfach:
// //
// Da die Anwendung beim ersten
// Deployment noch keine Anwender hat,
// kann der erste Account
// --~den ja wahrscheinlich die Entwickler:in anlegen wird~--
// Administrationsrechte
// //auf der Django-Datenbank
// erhalten.
// //
// Mit diesem Account können nun
// erste
// Spaces
// und Artikel
// angelegt
// werden
// und die Plattform
// kann
// für weitere Anwender:innen
// freigegeben
// werden.


=== Aufbau der Anwendung

Das User-Interface der Website
besteht aus einer Kopf-Bereich
und einem Bereich für den anzuzeigenden Inhalt.
//
Der Kopfbereich ist aufgeteilt in
einen Unter-Bereich für die Account-Verwaltung
und
einen Unter-Bereich für die Navigation.
//
Anwender:innen können auf der Seite einen Account anlegen,
in dem die Berechtigungen (Zugehörigkeit zu Spaces) hinterlegt sind.

Eine Einstiegsseite erklärt das Prinzip der Seite,
also
dass Anwender:innen
innerhalb geschützter Spaces
Artikel anlegen können
und
dass andere Anwender:innen diese Artikel nur lesen können,
wenn sie zuvor von einer Person innerhalb des Space zu diesem eingeladen wurden.

Über die Navigation kann
jeweils
eine Übersicht aller
für den verwendeten Account sichtbaren
Spaces und Artikel
aufgerufen werden.

Die Artikel bestehen aus
einer Überschrift,
der Information, welche Autor:in den Artikel verfasst hat,
welchen Spaces der Artikel zugewiesen ist
und dem eigentlichem Inhalt des Artikels.

/*
ATTENTION: TODO:
Die App zeigt Artikelüberschriften an.
Entweder Text anopassen oder App.
Zeigt die App die Überschriften nicht an ist Enumerieren über die Meta-Daten "schlimmer" (info leak).
Zeigt die App die Überschriften an, ist das ein leichterer Tipp für Teilnehmer.
*/

#figure(
	image("../figures/screenshotArticle2_fade.png", width: 80%),
	caption: [Screenshot der Website. In einem öffentlich einsehbareren Artikel wird das Funktionsprinzip erklärt.]
) <screenshotArticle2>

Zu einzelnen
Autor:innen
kann eine Übersicht ihrer
Artikel aufgerufen werden.
//
Für angemeldete
Anwender:innen besteht außerdem die Möglichkeit,
die ausgewählte
andere Person
zu einem der Spaces einzuladen.

#figure(
	image("../figures/screenshotUser12.png", width: 80%),
	caption: [Screenshot der Website mit Auflistung der von einer Person verfassten Artikel. Die Person kann zu einem Space eingeladen werden.]
) <screenshotUser12>


== Sicherheitslücken in der Anwendung

// TODO: Einführung?

=== Auslesen von Meta-Daten trotz fehlender Zugriffsberechtigung

Programmierer:innen
von Web-Anwendungen
unterliegen
häufig der falschen Annahme,
dass
die Bedienung
nur mit den
von der Anwendung selbst bereitgestellten
Mitteln
möglich ist.
@CWE425
//
Im Beispiel der Glesn-Anwendung
werden sowohl
in der Spaces-,
als auch in der Artikel-Übersicht
nur
Links zu
Ressourcen-Übersichten
aufgelistet,
auf die die Anwender:in Zugriff hat.
//
Die vergebenen
Berechtigungen
(Zugehörigkeit zum Space)
wird an dieser Stelle respektiert.
//
Über eine direkte Anfrage
ist
jedoch
ein gezielter Zugriff auf
die
Ressourcen-Übersichtsseite
einer
ausgewählten Ressource
möglich.
//
Wird
in der Glesn-Anwendung
eine Artikel-Ansicht
direkt aufgerufen,
wird auch auf der Übersichtsseite noch einmal die Berechtigung überprüft.
//
Der Inhalt des Artikels
bleibt also trotzdem geschützt.
//
Die Übersichts-Seite
zeigt
jedoch
Meta-Daten
über den Artikel an:
//
Angezeigt werden
die Spaces, denen dieser Eintrag zugewiesen ist
und
die Autor:in des Artikels.
//
Da
die Personen-Übersicht
nur Artikel anzeigt,
zu denen
eine Anwender:in Zugriff hat,
sich jedoch über den genannten Umweg
trotzdem
zumindest alle Artikel-Überschriften
zu Autor:innen zuweisen lassen,
ist dies als
Informationsleck
@CWE200
zu betrachten.


=== Rechteausweitung

// Die Anwendung bietet gleich zwei Möglichkeiten der Rechte-Ausweitung:
// //
// Innerhalb der Anwendung kann sich Zugriff auf geschützte Spaces erschlichen werden
// und
// durch Löschen aller Accounts kann die Anwendung in den initial-Modus versetzt werden,
// was dazu führt
// einer Angreifer:in
// Vollzugriff
// zu geben.

Wie beschrieben
bietet die Anwendung die Möglichkeit,
andere Benutzer:innen
zu Spaces einzuladen.
//
Durch
eine erste Berechtigungsprüfung
sind
in der grafischen Oberfläche
in einer Auswahl-Liste
für die Anwender:in
nur
die Spaces zum Einladen verfügbar,
zu denen
Zugriff
besteht.
//
Eine
Angreifer:in
kann die Oberfläche jedoch umgehen
und
beim Web-Server direkt
eine Einladung
anfragen.
//
Wieder
wird die Annahme ausgenutzt,
dass die vom Web-Server angebotenen Endpunkte
ausschließlich wie von der Entwickler:in vorgesehen
benutzt werden
@CWE425.
//
In der Beispiel-Anwendung
wurde davon ausgegangen,
dass
der Endpunkt
durch
die erste Berechtigungsprüfung
bereits geschützt ist.
//
In diesem Szenario wird deshalb fehlendes Bewusstsein unterstellt,
dass vor dem erfolgreichen Aussprechen einer Einladung zu einem Space
überprüft werden muss,
ob die einladende Person überhaupt selbst
über
die
notwendige
Berechtigung
verfügt.

Durch die
fehlende
Autorisationsprüfung
werden mehrere
Schutzziele
der Anwendung
gefährdet:
//
Einer
Angreifer:in
ist möglich,
eine
privilegierte Funktion aufzurufen,
die Daten in ihrem Sinne verändert
und ihr auf diese Weise Zugriff
auf
geschützte Informationen
liefert.
//
Durch
Verletzung
der
Integrität
werden
Zugriffskontrollen
umgangen
und
die Vertraulichkeit
der Anwendung
verletzt.
@CWE862

// Rechte-Ausweitung (innerhalb der Plattform):
// //
// Initial-Modus, aktiviert, wenn keine Anwender registriert sind.
// //
// Der erste registrierte Account wird dann mit Administrationsrechten ausgestattet.
// //
// Der Zugriff zu diesem initial-Modus ist nicht eingeschränkt. @CWE1188
// //
// In Kombination mit einem unsicheren Anwender-Verwaltungs-Endpunkt,
// der es
// ohne Autorisation @CWE306
// erlaubt Anwender zu löschen,
// kann ein Angreifer alle bestehenden Anwender,
// inklusive des bestehenden Administrations-Anwenders,
// löschen,
// um anschließend einen neuen Account anzulegen.
// //
// Diesem wird nun von der Anwendung Administrationsrechte zugesprochen.


== Angedachter Lösungsweg der Challenge

Ausnutzen der platzierten Schwachstellen innerhalb der Anwendung
- Enumerieren der vorhandenen Artikel
- Auslesen der Meta-Daten (Spaces & Space-ID, Autoren und Autoren-ID)
- Rechte-Ausweitung innerhalb der Anwendung durch selbst-hinzufügen zu Administrator-Space, an der GUI vorbei, ermöglicht durch fehlende Autorisationsprüfung

// Ausnutzen des initialen Setup-Modus
// - Löschen aller Anwender
// - Im Initialen Modus neuen Account
// - mit diesem in die Administartions-Datenbank


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
