module Main where

import Lib
import System.IO

main :: IO ()
--main = someFunc

--add :: Int -> Int -> Int
add x y = x + y

answer = add 5 3

y = x+5 where x = 10

a = b + 10 where b=10

myGcd a b | b == 0 = a
        | otherwise = myGcd b (mod a b)
mylist = [1..10]

c = take 5 (repeat 42)

--main = print(c)

main = do putStr "請輸入你的名稱："
          hFlush stdout
          name <- getLine
          putStrLn ("哈囉！" ++ name ++ "！")