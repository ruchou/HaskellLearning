module Main where

import Lib
import System.IO
import Data.List

--import Data.List (nub, sort, intersperse, group)

data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving(Show)

surface :: Shape -> Float
surface (Circle _ _ r) = pi*r^2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2-x1) * ( abs $ y2 -y1)

data Person = Person {
                        firstName :: String,
                        lastName :: String,
                        age :: Int
                        } deriving(Show)

main :: IO ()

main = do
      let myList = "monkey"
      let myCircle =  Circle 10 20 10
      print myCircle
      print $ surface $  Circle 10 20 10

      let bill = Person "Yan-Ru" "Jhou" 10
      print bill
      g <- getStdGen




