module Main where

import Lib
import System.IO

main :: IO ()
--main = someFunc

--add :: Int -> Int -> Int
--add x y = x + y
--
--answer = add 5 3
--
--y = x+5 where x = 10
--a = b + 10 where b=10
--
--myGcd a b | b == 0 = a
--        | otherwise = myGcd b (mod a b)
--mylist = [1..10]
--
--c = take 5 (repeat 42)
--
----main = print(c)
--
--prompt text = do
--    putStr text
--    hFlush stdout
--
--descOddEven :: Int -> String
--descOddEven number =
--    if number `mod` 2 == 0 then "偶數" else "奇數"
--
--doubleFunc :: Float -> Float
--doubleFunc x = x * x
--
--doubleThis :: Float -> Float
--doubleThis = doubleFunc
--
--myAdd :: Int -> Int -> Int
--myAdd x y = x+y
--
--addTen = (+ 20)
--
--getMoreThan2 = filter (>2)
--
--getElement :: [Int] ->Int -> Bool
--getElement lt ele =
--    if null $ lt then False
--    else
--        if head lt == ele then True
--        else
--            getElement (tail lt) ele
--
--is_prime :: Int -> Bool
--is_prime 1 = False
--is_prime 2 = True
--is_prime n | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
--		   | otherwise = True

boomBangs xs = [if x < 10 then "Boom" else "Bang"| x<-xs, odd x  ]

main = do
--    let addA = myAdd 10
--    let newList = map (+ 5) [10, 20, 30, 40, 50]
--    let listMoreThan2 = getMoreThan2 [1..10]
--    print $ addA 20
--    print $ addTen 30
--    print newList
--    putStrLn "joe"
--    print listMoreThan2
--    putStrLn "stack build; stack exec LearningHaskell-exe"
--    print $ getElement newList 15
--    print $ take (5) [50..]
--    print $ take  5 $ repeat 9
--    print $ take 5 [5,10 ..]
--    let listA =  map (+ 3) $ filter (> 3) [1, 2, 3, 4, 5]
--    let listA = [x+3 | x <-[1..5], x >3 ]
--    let triangle = [ [a,b,c] | a <-[1..20], b <-[1..20], c <- [1..20], a<=b, b<=c, a^2+b^2 == c^2 ]
--    let allPrime = [ x | x<-[1..200], is_prime x == True]
--    print listA
--    print triangle
--    print allPrime
--    let myList = [1..10]++[90..100]
--    print $ myList !! 4
--    print $ sum myList
--    print $ take 24 [14,28..]
--    print $ take 10 $ cycle [1..10]
--    print $ [x | x <- [1..100], mod x 7 ==0]
      print $ boomBangs[7..20]







--    stack build --exec LearningHaskell-exe
--    prompt "請輸入整數："
--    input <- getLine
--    let desc = descOddEven (read input::Int)
--    putStrLn (input ++ "是" ++ desc ++ "！")

