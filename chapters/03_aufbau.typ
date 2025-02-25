#import "../dependencies.typ": *

= Interaktive Lernumgebung

Basierend auf dem ICAP-Ansatz
wird im Folgenden eine interaktive Lernumgebung 
aufgebaut,
mit dem Ziel
Lernende
für ein definiertes IT-Sicherheitsproblem
zu sensibilisieren
und ihnen zu ermöglichen,
ähnliche
Sicherheitslücken
künftig
zu erkennen
und
zu bewerten.


== Lernziel ("learning goal objective")

=== Übergeordnet

Broken Access Control
- Top 1 der aktuellen OWASP #[#set text(lang: "en");"Top 10 Web Application Security Risks"].

=== Konkret

Direkter Zugriff
- Direkte Anfrage nach Ressourcen, die aus der GUI nicht erreichbar wären #link("https://cwe.mitre.org/data/definitions/425.html")[CWE-425]
- Auslesen von Meta-Daten, trotz fehlender Zugriffsberechtigungen #link("https://cwe.mitre.org/data/definitions/200.html")[CWE-200]

Rechte-Ausweitung
- Rechte-Ausweitung (innerhalb der Anwendung)
	- ermöglicht durch fehlende Authorisationsprüfung #link("https://cwe.mitre.org/data/definitions/862.html")[CWE-862]
- Rechte-Ausweitung (innerhalb der Plattform)
	- Initial-Modus, aktiviert, wenn keine Anwender registriert sind.
	  Der erste registrierte Account wird dann mit Administrationsrechten ausgestattet.
	  Der Zugriff zu diesem initial-Modus ist nicht eingeschränkt #link("https://cwe.mitre.org/data/definitions/1188.html")[CWE-1188].
	- In Kombination mit einem unsicheren Anwender-Verwaltungs-Endpunkt, der es ohne Autorisation #link("https://cwe.mitre.org/data/definitions/306.html")[CWE-306] erlaubt Anwender zu löschen, kann ein Angreifer alle bestehenden Anwender, inklusive des bestehenden Administrations-Anwenders, löschen, um anschließend einen neuen Account anzulegen. Diesem wird nun von der Anwendung Administrationsrechte zugesprochen.

== Storyline der Challenge



=== Aus Sicht des Programmierers

- Reddit ist erfolgreich
	- Kritik: zu offen, alles für alle lesbar, Leute mischen sich ein

Also:
Schaffen einer privaten Austauschplattform "Glesn".
- Hauptkonzept: "Spaces"
	- Themenbezogene Erfahrungs-Austausch-Kreise
	- Zutritt nur auf Einladung (#[#set text(lang: "en");"invite only"])

Architektur 
- Relationsmodell
	- User - Spaces - Artikel
- kurze Beschreibung Django
	- inklusive Besonderheit Django Admin

=== Aus Sicht des Betreibers

- Einfaches initiales Setup 
	- Anmeldung: Erster Account hat Admin-Rechte
- Anlegen erster Spaces und Artikel
- Freigabe der Plattform für Anwender

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
		
