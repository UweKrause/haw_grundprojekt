#import "../dependencies.typ": *

= Verwandte Arbeiten

/*
TODO: Rückbezug
"Wie schafft man es dieses Problem (aus Kap 1) anzugehen?"
-> man schaut sich Lernkonzepte an
*/

Verschiedenste
didaktische Konzepte
bekräftigen,
dass Lernende am erfolgreichsten lernen,
wenn sie sich aktiv mit dem Lerngegenstand beschäftigen.

/*
TODO: EBENEN/STUFEN WOVON?
Actice: Interaktion
Bloom: Verständnis / Stufen im Lernprozess
ICAP: ???
*/

Beispielsweise ist eine der Grundprinzipien des "Active Learning",
die Lernenden "aktiv" zu halten.
Dieser Theorie zufolge ist
das alleinige Lesen von Informationen oft nicht "aktiv" genug.
/*
TODO:was ist mit "aktiv" gemeint?
Bereits das Anstreichen von Textpassagen
trägt zu einer besseren Verarbeitung des
Stoffs
bei.
*/
Solange Lernende sich nicht aktiv mit dem Lerngegenstand beschäftigen,
werden sie dieser Theorie nach das Wissen nicht behalten.
@eckstein_patterns_2002

In Blooms Taxonomy gibt es verschiedene
aufeinander aufbauende
Ebenen.
Nach den Ebenen
"erinnern"
und
"verstehen"
folgt die Ebene
"anwenden".
Darauf wiederum folgen die Ebenen
"analysieren",
"bewerten"
und
"erschaffen".
@anderson_taxonomy_2001

Im 
ICAP-Ansatz
(Interactive - Constructive - Active - Passive)
werden
vier Kategorien
der kognitive Aktivitäten von Lernen
definiert und unterschieden.
Entlang dieser Kategorien
erhöht sich das Lernen,
wobei
die Interaktion mit dem Lerngegenstand
den besten Lernerfolg verspricht.
@chi_icap_2014

/*
TODO: Zusammenfassung
Diesen Ansätzen ist gemein,
je aktiver (bis hin zu interaktiv) man sich mit etwas beschäftigt,
desto nicer.
*/

== Serious Games

Eine im IT-Sicherheitsbereich geeignete
Form der Interaktion
sind sogenannte
"ernste Spiele".
Diese wurden entwickelt,
um die Spieler über reale Themen wie
Gesundheitsfürsorge, Sicherheit oder Umweltfragen
aufzuklären, zu schulen oder zu informieren.
@cooper_software_2023

Serious Gaming
kann
auch das Lernen
komplexer und
sehr technischen Themen erleichtern.
Konzepte der IT-Sicherheit,
können ebenfalls mit Techniken
der
"ernsten Spiele"
vermittelt werden.
Es können
/*
TODO: Vom Zitat lösen, das passt hier nicht.
zB "auf das Problem fokussierte"
*/
fesselnde und kontrollierte
Umgebungen
geschaffen werden,
in der sich Spieler
realistischen Herausforderungen stellen können.
@cooper_designing_2023

Werden bei diesen ernsten Spielen IT-Security Techniken vermittelt,
findet dies üblicherweise im Rahmen von
"capture the flag"
statt.
Es wurde von Trainings berichtet,
in denen
Teilnehmende
großes Interesse
am wettbewerbsorientierten Lernen
zeigten
@computer_science_department_texas_tech_university_teaching_2016
.
Außerdem wurde gezeigt,
dass mit 
capture the flag
die Interaktion von Lernenden
erhöht werden kann,
was zu besser entwickelten
Fähigkeiten
// TODO: Was für Fähigkeiten?
führt
@leune_using_2017
.

/*
TODO: Zusammenfassung
Deswegen ist es schlau
ctf zu benutzen,
um Kenntnisse
für IT-Sicherheits
zu vermitteln
*/

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
