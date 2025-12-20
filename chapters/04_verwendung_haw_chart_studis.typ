#import "../dependencies.typ": *

#echarm.render(width: 100%, height: 100%, options: (
  series: (
    type: "pie",
    radius: ("100%"),
    label: (
      "show": true,
      "position": "inside"
    ),
    data: (
      (value: 1, name: "Informatik\nMaster"),
      (value: 9, name: "Informatik Bachelor\n(Fachsemester 4-6)"),
      (value: 1, name: "Informatik Bachelor\n(FSem. 1-3)"),
      (value: 1, name: "E&I \nBachelor"),
    )
  ),
))
