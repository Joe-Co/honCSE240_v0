

--  elm make Main.elm --optimize --output=main.js
module Main exposing(..)

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)


main : Html msg
main =
  svg
    [ viewBox "0 0 400 400"
    , width "400"
    , height "400"
    ]
    [ circle
        [ cx "50"
        , cy "50"
        , r "40"
        , fill "red"
        , stroke "black"
        , strokeWidth "3"
        ]
        []
    , text_
        [ x "130"
        , y "130"
        , fill "black"
        , textAnchor "middle"
        , dominantBaseline "central"
        , transform "rotate(-45 130,130)"
        ]
        [ text "Welcome to Shapes Club"
        ]
    ]
