module ElmHtml.Helpers exposing (..)

{-|
Internal helpers for ElmHtml

@docs filterKnownKeys
-}

import Dict exposing (Dict)
import ElmHtml.Constants exposing (..)


{-| Filter out keys that we don't know
-}
filterKnownKeys : Dict String a -> Dict String a
filterKnownKeys =
    Dict.filter (\key _ -> not (List.member key knownKeys))
