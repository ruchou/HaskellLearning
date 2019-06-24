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

isRightTriangle :: Float -> Float -> Float -> Bool
isRightTriangle = \a -> \b -> \c -> a**2+b**2 == c**2

showAbsSumOf :: [Int] -> String
showAbsSumOf = show . abs . sum


data People = People Int

main :: IO ()
main = do
    let bill = People 20
    print $ fibonacciLt 10
    print $ isRightTriangle 3 4 5
    print $ showAbsSumOf [-3..10]





