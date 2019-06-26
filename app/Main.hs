module Main where

import System.IO
import Data.List



main :: IO ()
main = do
        print "hello"
        print "world"
        print $ foldl (+) 0 [1..5]




