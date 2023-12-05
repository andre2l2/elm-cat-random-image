module CatService exposing (..)

import Http
import Json.Decode as D


type Msg =
  GotCat (Result Http.Error (List String))

getCatService : Cmd Msg
getCatService = 
  Http.get {
    url = "https://cdn2.thecatapi.com/images/das.jpg"
  , expect = Http.expectJson GotCat (D.list (D.field "url" D.string))
  }
