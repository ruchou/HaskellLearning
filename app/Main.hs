module Main where

import Lib
import System.IO
import Data.List (nub, sort, intersperse)

main :: IO ()

main = do
      let myList = "monkey"
      print . intersperse '.'  $ myList
      print $ all (>2) [4..10]




