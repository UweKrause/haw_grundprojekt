#figure(
  table(
    columns: (2em, 2em, 4em, 4em),
    rows: (2em, 2em, 4em, 4em),
    align: horizon,

    table.cell(stroke: none, []),
    table.cell(stroke: none, []),
    table.cell(fill: rgb("e4e5e4"), colspan: 2, "Codeschaffend"),

    table.cell(stroke: none, []),
    table.cell(stroke: none, []),
    table.cell(fill: rgb("#1a9640"), "Ja"),
    table.cell(fill: rgb("#8cbe91"), "Nein"),

    table.cell(fill: rgb("#e4e5e4"), rowspan: 2, rotate(-90deg, reflow: true)[IT-Security]),
    table.cell(fill: rgb("#1a9640"), rotate(-90deg, reflow: true)[Nein]),
    table.cell(fill: rgb("#1a9640"), "18\n(38%)"),
    table.cell(fill: rgb("#8cbe91"), "21\n(45%)"),

    table.cell(fill: rgb("#8cbe91"), rotate(-90deg, reflow: true)[Ja]),
    table.cell(fill: rgb("#8cbe91"), "5\n(11%)"),
    table.cell(fill: rgb("#8cbe91"), "3\n(6%)"),
  ),
  kind: image,
  caption: "Die Zielgruppe sind Programmierer:innen ohne IT-Security-Hintergrund."
)
