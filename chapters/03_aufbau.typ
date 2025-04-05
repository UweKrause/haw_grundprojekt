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
Eine
Angreifer:in
kann
eine
privilegierte Funktion aufzurufen,
die Daten in ihrem Sinne verändert.
//
Auf diese Weise erhält
sie
Zugriff
auf
geschützte Informationen.
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


== Angedachter Lösungsweg <angedachterLösungsweg>

Die Challenge lässt sich
lösen,
indem die
innerhalb der Anwendung
platzierten Schwachstellen
ausgenutzt werden.
//
Die Sicherheitslücken müssen
miteinander kombiniert werden,
um zum Ziel zu kommen.
//
Es sind aber
keine
besonderen Angriffswerkzeuge
vonnöten,
ein üblicher Webbrowser reicht aus.
//
Mit dem Werkzeug der
"Netzwerkanalyse",
können in modernen Browsern
die einzelnen Aufrufe auf technischer Ebene
protokolliert,
eingesehen
und
erneut versendet
werden.
//
Einige Web-Browser (z.B. Firefox)
erlauben von hier auch
vor dem Wiederversenden eine Manipulation der Anfrage.

Als erstes wird davon ausgegangen,
dass
Angreifer:innen
die Anwendung auskundschaften.
//
Hierbei sollte schon ohne Account
auffallen,
dass die
öffentlich sichtbaren
Spaces und Artikel
anhand ihrer ID aufgerufen werden.
//
Der sichtbare Space "Public"
hat die
`ID` `2`
und
im Browser wird als Navigationspfad
`/space/2/`
angezeigt.
//
Der darin abgelegte Artikel hat die Artikel-`ID`
`2`
und wird
über
`/article/2/`
aufgerufen.
//
Die Oberfläche zeigt unter anderem auch
einen Link zur Übersichtsseite
der Autor:in des Artikels an,
die
sich
in diesem Beispiel über
`user/12/`
aufrufen lässt.
//
@screenshotGETUser12 zeigt einen Ausschnitt der Netzwerkanalyse.

#figure(
	image("../figures/screenshotGETUser12.png", width: 100%),
	caption: [Screenshot der Netzwerkanalyse: Erfolgreicher GET Aufruf auf `/user/12/`.]
) <screenshotGETUser12>

Dass die ersten sichtbaren Einträge die `ID` `2` haben,
soll
als Hinweis verstanden werden,
dass es unter den weiteren vorhandenen
Spaces, Artikel und User-Accounts
auch jeweils Objekte mit der `ID` `1` gibt,
die von besonderem Interesse sein könnten.
//
Durch einen direkten Aufruf der Ressourcen,
in Kombination mit der Anzeige der unzureichend geschützten
Meta-Daten,
können
Informationen über
weitere
Spaces, Artikel und Autor:innen
enumeriert werden.
//
So enthalten die Beispieldaten
unter anderem
ein Account mit dem Namen "admin",
ein Space
dessen Name
"!!! ADMIN ONLY !!!" lautet
und ein Artikel
mit der Überschrift
"Note FOR ADMINS ONLY !!!".
//
Die sehr deutlichen Namen
sollen wieder ein Hinweis
auf das zu erreichende Ziel sein.

Nun sollte die nächste zur Verfügung stehende Funktionalität der Website verwendet werden:
Die Registration eines neuen Accounts.
//
Mit diesem Account sind zwar keine zusätzlichen
Spaces oder Artikel sichtbar,
aber auf der Informationsseite zu anderen Autoren
erscheint nun
--~wie zuvor in @screenshotUser12 gezeigt~--
die Möglichkeit,
die andere Person zu Spaces einzuladen.
//
Mit Hilfe der Netzwerkanalyse
kann dem Protokoll entnommen werden,
dass eine Einladung zu einem Space
auf technischer Ebene
durch ein
`POST`-Request
angefordert wird.
//
Dieser Anfrage wird als
Argument die `ID` des Spaces
über den Parameter
```json space_id```
übergeben,
wie in
@screenshotPOSTUser12Space
dargestellt.

#figure(
	image("../figures/screenshotPOSTUser12Space.png", width: 100%),
	caption: [Screenshot der Netzwerkanalyse: Erfolgreicher POST Aufruf auf `/user/12/` mit Argument ```json space_id: "17"```.]
) <screenshotPOSTUser12Space>

Der angedachte Lösungsweg sieht vor,
dass
eine Angreifer:in
nun versuche sollte,
die Parameter der Anfrage zu manipulieren
und
zu probieren,
verschiedenen Accounts zu verschiedenen
Spaces einzuladen.
//
Aufgrund der Sicherheitslücke der fehlenden
Berechtigungsprüfung
wird dies gelingen
und
die Angreifer:in
kann sich selbst
durch eine
manipulierte `POST`-Anfrage
zu dem
Space mit der
```json space_id: "1"```
einladen.
//
Da sie nun Mitglied des Spaces ist,
also ihre eigenen Zugriffsrechte erhöht hat,
kann sie über die reguläre
Benutzeroberfläche
auch den Inhalt
der
eigentlich geschützten
Notiz lesen.


// Ausnutzen des initialen Setup-Modus
// - Löschen aller Anwender
// - Im Initialen Modus neuen Account
// - mit diesem in die Administartions-Datenbank

// - Der erste Beitrag (ID 1) ist eine vom (simulierten Admin) angelegte Notiz an andere Admins
// 	- Der Admin drückt Freude darüber aus, wie einfach das initiale Setup dadurch war, dass das System einfach dem ersten User-Account Administrationsrechte gibt.


// == Realitätsbezug
// TODO: ggf ergänzen.
// Bezug auf OWASP Top 10 sollte ausreichen.
// 
// 2024 September: KIA
// - News
// 	- Spiegel: #link("https://www.spiegel.de/netzwelt/gadgets/kia-hacker-konnten-per-app-autos-orten-und-fernsteuern-a-dc1f2592-d3b5-4619-89bf-4cfdd74c7804")[Hacker konnten koreanische Autos per App orten, starten, hupen lassen]
// 	- Heise: #link("https://www.heise.de/news/Kia-Luecke-in-Webportal-erlaubte-Forschern-Fernzugriff-auf-Autos-9956342.html")[Kia: Lücken in Webportal erlaubten Forschern Fernzugriff auf Autos]
// 	- Der Standard: #link("https://www.derstandard.de/story/3000000238639/schwere-sicherheitsluecken-bei-kia-ermoeglichten-fernortung-und-start-von-millionen-autos")[Schwere Sicherheitslücken bei Kia ermöglichten Fernortung und Start von Millionen Autos]
// - Blog (Originalquelle)
// 	- Sam Curry: #link("https://samcurry.net/hacking-kia")[Hacking Kia: Remotely Controlling Cars With Just a License Plate]


== Beta-Test

Während der Entwicklung der Challenge
wurde ein Beta-Test durchgeführt,
bei dem sich
freundlicherweise
mehrere Mitglieder des
lokalen CTF-Teams
Cyclopropenylidene (`C3H2`)
bereit erklärt haben,
eine Vorabversion
der Aufgabe zu lösen.
//
Aus den
gesammelten
Rückmeldungen
sind Zwei Punkte
besonders nennenswert:

In einer früheren Version
wurden
in die
Datenbank der
Beispieldaten
zunächst
die Artikel
eingefügt,
dann erst der
zu findende
Artikel mit den versteckten
Informationen
//
(siehe @angedachterLösungsweg).
//
Dies führte dazu,
dass dieser
Artikel
eine unvorhersehbare `ID`
wie `17` oder `19`
hatte,
wodurch wiederum das Ziel nicht so klar war.
//
Einer der Beta-Tester hat angemerkt,
dass
die `IDs` als eine Art Hinweis verwendet werden könnten,
wie dann später umgesetzt.

Außerdem wurde
ein
technisches Problem aufgedeckt:
//
Ein Beta-Tester hat nicht nur einen Account angelegt
und
(wie angedacht)
diesem Account
Zugriff auf den versteckten Space
gegeben,
sondern
mit Hilfe eines http replay Proxy
die Sicherheitslücke
so ausgenutzt,
dass alle Accounts Zugriff auf den versteckten Space hatten.
//
Das hat dafür gesorgt,
dass eine Beta-Testerin,
die sich zuvor einen Account angelegt hat,
aber die Sicherheitslücke noch nicht gefunden hat,
plötzlich
ohne eigenes Zutun
Zugriff auf den versteckten Space
hatte.
//
Für diese Challenge ist es also notwendig,
dass sie pro Person/Team als eigene isolierte Instanz bereitgestellt werden
muss.


== Durchführung Workshop

Während der sogenannten [Workshop Week]
an der
Hochschule für Angewandte Wissenschaften
(HAW) Hamburg
im September 2024
wurden
mit Hilfe
diese Challenge
in einer
halbtägigen
Veranstaltung
ca. 12 Teilnehmer:innen
in
das Problemfeld
der
mangelhaften Zugriffskontrolle
eingeführt.
//
// - Studierende
// 	- Informatik
// 		- Bachelor
// 		- Master
//
Es wurde
zwar
keine strukturierte Evaluation
durchgeführt,
aber
aus Reaktionen während der Veranstaltung
und
in unstrukturierten Gesprächen
nach der Veranstaltung
wurde ersichtlich,
dass wenigstens
einzelne Teilnehmer:innen
gelernt haben,
wie leicht
http-Anfragen wie `GET` und `POST`
manipuliert werden können
und wie wichtig daher eine
serverseitige
Überprüfunge // todo: ?
der Nutzereingaben
ist.
//
Zusätzlich dazu
wurde ein
deutliches Interesse
an dieser
Lernform zu
IT-Sicherheitsthemen
geäußert.


