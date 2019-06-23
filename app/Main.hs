module Main where

import Lib
import System.IO
import Data.List

--import Data.List (nub, sort, intersperse, group)

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

main :: IO ()
main = do
    line <- getLine
    if null line
        then return ()
    else
        do
            putStrLn $ reverseWords line
            main





