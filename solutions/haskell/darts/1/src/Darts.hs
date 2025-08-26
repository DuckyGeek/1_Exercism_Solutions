module Darts (score) where

score :: Float -> Float -> Int
score x y = 
  let distance = sqrt ( x**2 + y**2 )
  in
    if distance <= 1.0
      then 10
      else if distance <= 5.0
        then 5
        else if distance <= 10.0
           then 1
           else 0
      