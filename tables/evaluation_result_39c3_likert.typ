#let results = csv("../tables/evaluation_result_39c3_likert.csv")
#figure(
  table(
    columns: (2em, auto, 2em, 2em, 2em, 2em, 2em),
    table.header(
    table.cell(
        colspan: 2,
        rowspan: 2,
        align: horizon,
    )[*Frage*],
    table.cell(
        colspan: 5,
    )[*Zustimmung*],
    [*1*], [*2*], [*3*], [*4*], [*5*]),
    ..results.flatten()
  ),
  caption: "Fragen zu Workshopverlauf und subjektivem Lernerfolg. Antwortmöglichkeiten von \"Stimme überhaupt nicht zu\" (1) bis \"Stimme voll und ganz zu\" (5)."
)
