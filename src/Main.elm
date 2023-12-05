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


main : Program () CatModel Msg
main =
  Browser.sandbox { init = init, update = update, view = view }

type alias CatModel =
  { id : String
  , url : String
  , width : String
  , height : String
  }

init : CatModel
init = 
  CatModel "" "https://cdn2.thecatapi.com/images/das.jpg" "" ""

type Msg = 
  MakeRequest

update : Msg -> CatModel -> CatModel
update msg catModel =
  case msg of
    MakeRequest ->
      catModel

view : CatModel -> Html.Html Msg
view model =
  section [ class "h-[100vh] bg-gray-600" ] [
    div [ class "flex items-center justify-center flex-col h-[100%] w-[100%]" ] [
      img [ 
        width 400
      , src model.url
      , alt "Cat ramdom image" ] []
    , button [ 
        class "cursor-pointer rounded-md bg-yellow-300 p-2 mt-5" 
      , onClick MakeRequest
      ] [ text "Randin Image" ]
    ] 
  ]

