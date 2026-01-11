#import "../dependencies.typ": *

= Verwendung der Lernumgebung

Die Lernumgebung wurde zu verschiedenen Gelegenheiten verwendet,
teilweise in unterschiedlichen Kontexten.
//
Rückmeldungen
wurden auf verschiedene Weise gesammelt
und teilweise in die Weiterentwicklung aufgenommen.


== Verwendung für einen geführten Workshop an der HAW Hamburg mit 12 Teilnehmer:innen

Während der sogenannten "[Workshop Week]"
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
12 Teilnehmer:innen
in
das Problemfeld
der
mangelhaften Zugriffskontrolle
eingeführt.

Ein Großteil der Teilnehmer:innen
(10) studierte im Bachelorstudiengang Informatik,
eine Teilnehmer:in studierte bereits im Master Informatik,
eine weitere im Bachelor Elektro- und Informations-?technik.
//
In einer anonymen Umfrage zum Ende des Workshops
gaben 5 Personen an,
weniger als ein Jahr berufliche Programmier-Erfahrung zu haben,
wobei jeweils 3 Teilnehmer:innen
ein bis zwei Jahre
und
zwei bis fünf Jahre
Programmier-Erfahrung angaben.

Als Versuch einer Evaluation
wurde den Teilnehmer:innen am Ende des Workshops
Code-Beispiele mit bewusst platzierten Schwachstellen vorgelegt,
mit der Bitte, Art und Position der Schwachstelle zu benennen.
//
Teilweise wurden die Schwachstellen richtig identifiziert,
teilweise wurden korrekte Code-zeilen als Schwachstelle markiert.
//
Vor allem aufgrund des fehlenden Vorher/-Nachher-Vergleichs
fehlt die Grundlage zur Evaluation des Workshops,
daher scheint das Ergebnis nicht aussagekräftig
und soll hier nicht weiter berücksichtigt werden.

Aus Reaktionen während der Veranstaltung
und
in Gesprächen
nach der Veranstaltung
wurde ersichtlich,
dass
einzelne Teilnehmer:innen
gelernt haben,
wie leicht
http-Anfragen wie `GET` und `POST`
manipuliert werden können
und wie wichtig daher eine
serverseitige
Überprüfung // todo: ?
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


== Verwendung als Challenge in einem Capture the Flag Wettbewerb (Easterhegg 2025)

(TODO)

== Verwendung für einen geführten Workshop auf einer kleinen IT-Konferenz (NooK) mit 34 Teilnehmer:innen

(TODO)

== Verwendung für einen geführten Workshop auf einer großen IT-Konferenz (39c3) mit ca. 75 Teilnehmer:innen

In einer selbstorganisierten Session (SoS) auf dem Chaos Communication Congress
wurde die Lernumgebung für einen geführten Workshop verwendet.

Die genaue Teilnehmerzahl wurde leider nicht erhoben,
es wird von ca. 75 Teilnehmer:innen ausgegangen.
// 15 * 8 Plätze: 120 Kapazität
// 4 Plätze pro Tisch frei: 4*15=60 (Aber kein Tisch war weniger als halb oder halb belegt)
// 3 Plätze pro Tisch frei: 5*15=75
// 2 Plätze pro Tisch frei: 6*15=90 (Aber nicht alle Tische waren voll oder hatten nur 1-2 Plätze frei)
#footnote[
  An 15 Tischen waren jeweils 8 Plätze verfügbar.
  Alle Tische waren besetzt, aber pro Tisch waren vereinzelte Plätze frei.
]
//
Zum Abschluss des Workshops wurden die Teilnehmer:innen gebeten,
einen vorbereiteten Feedbackbogen auszufüllen.
//
Ca. 5 Personen haben während des Workshops den Raum verlassen und hatten keine Gelegenheit Feedback zu geben,
wodurch die Ergebnisse verzerrt sein könnten.
//
Von den verbleibenden Teilnehmer:innen haben 48
Rückmeldung gegeben.

Der Fragebogen enthielt Fragen zum
Gesamteindruck,
dem Hintergrund der Teilnehmer:innen,
dem Verlauf der Veranstaltung
und
dem (subjektiven) Lernerfolg.
//
Die Art des Fragebogens
ermöglicht nur eine subjektive Bewertung,
im Gegensatz zu etwa einer automatiserten Verhaltens-Auswertung.
//
Quantitative Fragen
sollen zeigen "was passiert",
während
qualitative Fragen aufzeigen sollen,
"warum es passiert"
@kirginasUserExperienceEvaluation2023.
//
Ein Großteil der Fragen waren
geschlossene Fragen,
die anhand einer linearen Skala beantwortet wurden.
//
Ergänzend zu diesen
wurden
offene Fragen gestellt,
die durch einen Freitextkommentar beantwortet werden konnten.

Zwei Fragen bezogen sich auf den fachlichen Hintergrund der Teilnehmer:innen.
//
Frage
H1: "Ich verdiene meinen Lebensunterhalt hauptsächlich durch Schreiben von Code."
und
H2: "Ich verdiene meinen Lebensunterhalt hauptsächlich im Bereich der IT-Security."
sollen ermöglichen,
dass die restlichen Antworten der Zielgruppe zugeordnet werden können.
//
Die Verteilung der Codeschaffenden ist in diesem Workshopdurchgang
knapp bei der Hälfte gewesen,
während
ein Großteil der Teilnehmer:innen nicht hauptsächlich in der IT-Security tätig ist.

#include "../tables/evaluation_result_39c3_hintergrund.typ"

Die Zielgruppe für diesen Workshop sind Programmierer:innen
ohne IT-Security-Hintergrund,
aus der Menge der Teilnehmer:innen
sind das 18 Personen (38~%).
//
Beihnahe die Hälfte der Teilnehmer:innen (45~%)
könnten als Besucher:innen bezeichnet werden,
weder programmieren sie hauptberuflich,
noch sind sie hauptberuflich in der IT-Security.

#include "../figures/04_verwendung_39c3_zielgruppenanalyse.typ"


Die meisten Fragen bezogen sich
auf den Gesamteindruck des Workshops,
die Challenge selbst,
das Verhalten des Trainers
und schließlich
den subjektiven Lernerfolg.
//
Zu verschiedenen Thesen
sollen die Teilnehmer:innen zustimmen,
wobei ihnen eine linearen Skala von
1 "Stimme überhaupt nicht zu"
bis
5 "Stimme voll und ganz zu"
(Likert-Skala)
zur Verfügung steht.


#include "../tables/evaluation_result_39c3_likert.typ"

Die prozentuale Auswertung zeigt,
dass nahezu alle angegeben haben Spaß gehabt zu haben (L1: 92~%)
und ebenfalls nahezu alle den Workshop weiteremfehlen würden (L8: 88~%).
//
Es darf also von einem positiven Gesamtergebnis ausgegangen werden.
//
Ein Großteil hat angegeben,
etwas gelernt zu haben, was sie schon gerne vorher gewusst hätten
(L2: 69~%),
also etwas, was sie als wertvolles Wissen bewerten.

Auf den ersten Blick verbesserungsfähig scheint zu sein,
dass ein nicht unwesentlicher Teil
nicht immer wussten, was sie als nächstes ausprobieren sollten
(L4: 29~%).
//
Allerdings gab
ein überwiegende Teil auch an,
dass die Schwierigkeit der Challenge
ihrer Meinung nach angemessen war (L3: 73~%)
und zudem
der Trainer ausreichend erreichbar war (L5: 84~%)
und Fragen hilfreich beantwortet hat (L6: 73~%),
ohne zu viel zu verraten (L7: subjektives Empfinden von 90~% der Leute).


#figure(
  image("../figures/39c3_feedback_likert.png"),
  caption: "Prozentuale Verteilung der Antworten zu Workshopverlauf und subjektivem Lernerfolg."
)

Bezogen auf die 18 Teilnehmer:innen aus der Zielgruppe
haben sogar alle angegeben Spaß gehabt zu haben (L1 aus Zielgruppe: 100~%),
wobei beinahe alle den Workshop weiterempfehlen würden (L8 aus Zielgruppe: 94~%).
//
Der subjektive Lernerfolg innerhalb der Zielgruppe liegt noch bei 61~%.
//



#figure(
  image("../figures/39c3_feedback_likert_filter_zielgruppe.png"),
  caption: "Prozentuale Verteilung der Antworten zu Workshopverlauf und subjektivem Lernerfolg (gefiltert auf Teilnehmer:innen aus der Zielgruppe)."
)
