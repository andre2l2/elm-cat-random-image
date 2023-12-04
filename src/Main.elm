module Main exposing (..)

import Browser
import Html exposing (div)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)
import Html exposing (section)
import Html exposing (img)
import Html.Attributes exposing (src)
import Html.Attributes exposing (alt)
import Html.Attributes exposing (width)
import Html exposing (button)
import Html exposing (text)

main : Program () Int Msg
main =
  Browser.sandbox { init = 0, update = update, view = view }

type Msg = Increment | Decrement

update : Msg -> number -> number
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

view : Int -> Html.Html Msg
view model =
  section [ class "h-[100vh] bg-gray-600" ] [
    div [ class "flex items-center justify-center flex-col h-[100%] w-[100%]" ] [
      img [ 
        width 400
      , src "https://cdn2.thecatapi.com/images/das.jpg"
      , alt "Cat ramdom image" ] []
    , button [ 
        class "cursor-pointer rounded-md bg-yellow-300 p-2 mt-5" 
      ] [ text "Randin Image" ]
    ] 
  ]

