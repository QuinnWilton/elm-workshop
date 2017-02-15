module Main exposing (..)

import Html exposing (Html, program, button, div, h1, text)
import Html.Attributes exposing (id)


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "RSA Simulator 2016" ]
        , button [ id "pitch-button" ] []
        ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main =
    program { view = view, init = init, update = update, subscriptions = subscriptions }
