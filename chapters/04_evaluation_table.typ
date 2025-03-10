// #import "../dependencies.typ": *
// 
// #let moore = csv("evaluation.csv", delimiter: ";")
// 
// #context [
// #set text(lang: "en")
// #table(
//   columns: 3,
//   table.header([Index],[Requirement],[Evaluation]),  
//   ..for (..,index, year, count) in moore {
//     (index, year, count)
//   },
//   table.footer(repeat: false, [],[],[?? %]),
// )
// ]