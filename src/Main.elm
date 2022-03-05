module Main exposing (Model, Msg, main)

import Browser
import Html exposing (Html)
import Html.Events as Events
import Mixin
import Mixin.Html as Mixin



-- App


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type alias Model =
    ()


init : ( Model, Cmd Msg )
init =
    ( ()
    , Cmd.none
    )


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model
            , Cmd.none
            )


view : Model -> Html Msg
view _ =
    Mixin.div
        [ Mixin.class "wrapper"
        , Mixin.fromAttribute
            (Events.onClick NoOp)
        ]
        [ Html.text "test"
        ]


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
