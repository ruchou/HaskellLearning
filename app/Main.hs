module Main where

import Lib
import System.IO
import Data.List (nub, sort, intersperse)

main :: IO ()

main = do
      let myList = "monkey"
      print . intersperse '.'  $ myList
      print $ all (>2) [4..10]
      print . take 10 . iterate (*2) $ 1
      print . takeWhile (>3) $ [20,19..1]
      print . sum . takeWhile (<10000) . map (^5) $ [1..]



