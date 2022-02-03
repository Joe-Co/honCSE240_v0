

--  elm make Main.elm --optimize --output=main.js
module Main exposing(..)

import Html exposing (Html)
import Svg
import Svg.Attributes as Att
import Browser
import Http



-- MAIN


main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }



-- MODEL


type Model
  = Loading
  | Done


init : () -> (Model, Cmd Msg)
init _ =
  ( Loading
  , Http.get
      { url = "https://elm-lang.org/assets/public-opinion.txt"
      , expect = Http.expectString GotText
      }
  )



-- UPDATE


type Msg
  = GotText (Result Http.Error String)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  (Done, Cmd.none)



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW


view : Model -> Html Msg
view model =
  basicSvg

type Color
  = Black
  | White

circle : Int -> Int -> Int -> String -> Svg.Svg msg
circle x y radius color = 
  Svg.circle
    [ Att.cx (String.fromInt x)
    , Att.cy (String.fromInt y)
    , Att.r (String.fromInt radius)
    , Att.fill color
    , Att.stroke "black"
    , Att.strokeWidth "3"
    ]
    []

basicSvg : Html msg
basicSvg =
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
        [ Svg.text "Welcome to Shapes Club, version 6"
        ]
    ]
