#import "@preview/haw-hamburg:0.8.0": report

#import "dependencies.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: report.with(
  language: "de",
  title: "(wip) Noch kein Titel",
  author:"Uwe Krause",
  faculty: "Informatik und Digitale Gesellschaft",
)

// Enable glossary
// Use: @key or @key:pl to reference and #print-glossary to print it
// More documentation: https://typst.app/universe/package/glossarium/
// #show: make-glossary
// #import "glossary.typ": glossary-entry-list
// #import "abbreviations.typ": abbreviations-entry-list
// #register-glossary(glossary-entry-list)
// #register-glossary(abbreviations-entry-list)

// Print abbreviations
// #pagebreak(weak: true)
// #heading("Abkürzungen", numbering: none)
// #print-glossary(abbreviations-entry-list, disable-back-references: true)

// Include chapters of thesis
// #pagebreak(weak: true)

#include "chapters/01_introduction.typ"

#include "chapters/02_related.typ"

#include "chapters/03_aufbau.typ"

// #include "chapters/04_evaluation.typ"

#include "chapters/05_fazit.typ"

// Print glossary
// #pagebreak(weak: true)
// #heading("Glossar", numbering: none)
// #print-glossary(glossary-entry-list, disable-back-references: true)

// Print bibliography
#pagebreak(weak: true)

#bibliography("bibliography.bib", style: "iso-690-author-date")
