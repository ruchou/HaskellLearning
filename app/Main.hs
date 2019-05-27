module Main where

import Lib
import System.IO

main :: IO ()
--main = someFunc

add :: Int -> Int -> Int
add x y = x + y

answer = add 5 3

y = x+5 where x = 10

a = b + 10 where b=10

myGcd a b | b == 0 = a
        | otherwise = myGcd b (mod a b)
mylist = [1..10]

c = take 5 (repeat 42)

--main = print(c)

prompt text = do
    putStr text
    hFlush stdout

descOddEven :: Int -> String
descOddEven number =
    if number `mod` 2 == 0 then "偶數" else "奇數"

doubleFunc :: Float -> Float
doubleFunc x = x * x

doubleThis :: Float -> Float
doubleThis = doubleFunc

myAdd :: Int -> Int -> Int
myAdd x y = x+y

addTen = (+ 20)

getMoreThan2 = filter (>2)

main = do
    let addA = myAdd 10
    let newList = map (+ 5) [10, 20, 30, 40, 50]
    let listMoreThan2 = getMoreThan2 [1..10]
    print $ addA 20
    print $ addTen 30
    print newList
    putStrLn "joe"
    print listMoreThan2
    putStrLn "stack build; stack exec LearningHaskell-exe"





--    prompt "請輸入整數："
--    input <- getLine
--    let desc = descOddEven (read input::Int)
--    putStrLn (input ++ "是" ++ desc ++ "！")

