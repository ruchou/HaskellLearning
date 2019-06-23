module Main where

import Lib
import System.IO
import Data.List

--import Data.List (nub, sort, intersperse, group)

--reverseWords :: String -> String
--reverseWords = unwords . map reverse . words

fibonacci :: Int -> Int
fibonacci n
    | n==0 = 0
    | n==1 = 1
    | otherwise = fibonacci (n-1) + fibonacci (n-2)

--check :: Bool -> String
--check isTrue = case isTrue of True -> "Yes"
--                              False -> "No"
fibonacciLt :: Int -> [Int]
fibonacciLt n = [fibonacci x | x <- [0 .. n]]
    where fibonacci n
              | n == 0 = 0
              | n == 1 = 1
              | otherwise = fibonacci (n-1) + fibonacci(n-2)


main :: IO ()
main = do
    print $ fibonacciLt 10




