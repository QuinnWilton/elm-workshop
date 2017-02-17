module Main exposing (..)

import Html exposing (Html, program, button, div, h1, text)
import Html.Attributes exposing (class, id)


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
        , div [] [ text "100 customers" ]
        , store model
        ]


store : Model -> Html Msg
store model =
    div []
        [ div [ class "store-item" ]
            [ div
                [ class "icon tinfoil-hats" ]
                []
            , div
                [ class "content" ]
                [ div
                    [ class "name" ]
                    [ text "Tinfoil Hat" ]
                , div
                    [ class "price" ]
                    [ text "$15" ]
                ]
            ]
        , div [ class "store-item" ]
            [ div
                [ class "icon salesperson" ]
                []
            , div
                [ class "content" ]
                [ div
                    [ class "name" ]
                    [ text "Salesperson" ]
                , div
                    [ class "price" ]
                    [ text "$50" ]
                ]
            ]
        ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main =
    program { view = view, init = init, update = update, subscriptions = subscriptions }
