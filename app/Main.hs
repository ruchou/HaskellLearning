module Main where

import Lib
import System.IO
import Data.List
--import Data.List (nub, sort, intersperse, group)

main :: IO ()

main = do
      let myList = "monkey"
      print . intersperse '.'  $ myList
      print $ all (>2) [4..10]
      print . take 10 . iterate (*2) $ 1
      print . takeWhile (>3) $ [20,19..1]
      print . sum . takeWhile (<10000) . map (^5) $ [1..]
      print . dropWhile (<3) $ [1,2,2,2,3,4,5,4,3,2,1]
      let stock = [(994.4,2008,9,1),(995.2,2008,9,2),(999.2,2008,9,3),(1001.4,2008,9,4),(998.3,2008,9,5)]
      let ans = head $ dropWhile (\(val,y,m,d)-> val < 1000) stock
      print ans
      print $ span (<3) [1..20]
      print $ map (\l@(x:xs)->(x,length l)) . group . sort $ [1,1,1,1,2,2,2,2,3,3,2,2,2,5,6,7]
      print $ intersect [1..10] [5..8]




