module Foo where

    reverseList :: [a] -> [a]
    reverseList [] = []
    reverseList (h:t) = reverseList t ++ [h]
