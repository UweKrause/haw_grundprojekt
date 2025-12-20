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
      (value: 5, name: "<1 Jahr"),
      (value: 3, name: "1-2 Jahre"),
      (value: 3, name: "2-5 Jahre"),
      //(value: 0, name: ">5 Jahre"),
      //(value: 1, name: "(keine Angabe)"),
    )
  ),
))
