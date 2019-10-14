module Mousikea.Examples.Mine exposing (music, simpleBeat)

import Mousikea.Music as Music exposing (..)
import Mousikea.PercussionSound exposing (PercussionSound(..))
import Mousikea.Primitive exposing (Dur, Primitive(..))
import Mousikea.Util.Ratio as Ratio exposing (add, div, divByInt, mul, mulByInt, over)



-- http://www.euterpea.com/tutorials/
-- spotify:track:4Bzu69L6wqSFmKKjPe4OMA at 1:20 would make perfect background sound
-- https://github.com/billstclair/elm-websocket-client


playground : Music1
playground =
    line
        [ a 4 en
        , b 4 en
        ]
        |> Music.map (\p -> ( p, [ Volume 60 ] ))


simpleBeat : Music1
simpleBeat =
    times 4 (perc AcousticBassDrum qn)
        |> Par (times 8 (perc ClosedHiHat en))
        |> Par (line [ rest qn, Par (perc AcousticSnare qn) (perc HandClap qn) ] |> times 4)
        |> times 16
        |> Music.map (\p -> ( p, [ Volume 60 ] ))


simpleBeat2 : Music1
simpleBeat2 =
    times 4 (perc AcousticSnare qn)
        |> Par (times 8 (perc ClosedHiHat en))
        |> Par (line [ rest qn, Par (perc AcousticSnare qn) (perc HandClap qn) ] |> times 4)
        |> times 16
        |> Music.map (\p -> ( p, [ Volume 60 ] ))


music : Music1
music =
    -- simpleBeat
    playground



-- failed
-- passed
-- created
