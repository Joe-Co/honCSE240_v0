

--  elm make Main.elm --optimize --output=main.js
module Main exposing(..)

import Html exposing (Html)
import Svg
import Svg.Attributes as Att


main : Html msg
main =
  Svg.svg
    [ Att.viewBox "0 0 400 400"
    , Att.width "400"
    , Att.height "400"
    ]
    [ Svg.circle
        [ Att.cx "50"
        , Att.cy "50"
        , Att.r "40"
        , Att.fill "red"
        , Att.stroke "black"
        , Att.strokeWidth "3"
        ]
        []
    , Svg.circle
      [ Att.cx "100"
      , Att.cy "200"
      , Att.r "20"
      , Att.fill "blue"
      , Att.stroke "black"
      , Att.strokeWidth "3"
      ]
      []
    , Svg.text_
        [ Att.x "130"
        , Att.y "130"
        , Att.fill "black"
        , Att.textAnchor "middle"
        , Att.dominantBaseline "central"
        , Att.transform "rotate(-45 130,130)"
        ]
        [ Svg.text "Welcome to Shapes Club"
        ]
    ]
