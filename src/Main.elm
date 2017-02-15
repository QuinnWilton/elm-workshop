module Main exposing (..)

import Html exposing (Html, program, text, div)


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
        [ text "Hello world!"
        ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main =
    program { view = view, init = init, update = update, subscriptions = subscriptions }
