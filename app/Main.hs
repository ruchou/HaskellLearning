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

swap :: (a,b)->(b,a)
swap (a,b) = (b,a)



password :: String -> Maybe String
password person = lookupUsers [("bill","1234")]
        where
                lookupUsers [] = Nothing
                lookupUsers ((name, passwd):xs) =
                        if name == person then Just passwd
                         else lookupUsers xs

class Comp a
        where comp:: a -> a -> Integer

instance Comp Integer
        where comp x y = x - y

quickSort:: [Int] -> [Int]
quickSort [] = []
quickSort (x:xs) = quickSort small ++ [x] ++ quickSort large
                where small = [y | y <-xs, y < x]
                      large = [y | y <-xs , y>=x]


main :: IO ()
main = do
        let myList = [3,7,3,2,3,9,10,5,2,8]
        print $ quickSort myList



