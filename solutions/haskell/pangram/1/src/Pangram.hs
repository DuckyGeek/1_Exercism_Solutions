module Pangram (isPangram) where

import Data.Char (toLower)
import Data.List (nub, sort)

isPangram :: String -> Bool
isPangram text =
  let
    alphabet = ['a'..'z']
    uniqueLetters = nub . sort . map toLower $ text
    filteredLetters = filter (`elem` alphabet) uniqueLetters
  in
    alphabet == filteredLetters