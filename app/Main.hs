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

main = do
    prompt "請輸入整數："
    input <- getLine
    let desc = descOddEven (read input::Int)
    putStrLn (input ++ "是" ++ desc ++ "！")

