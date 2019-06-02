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

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
        | bmi <= 18.5 = "UnderWeight"
        | bmi <= 25 = "Normal"
        | bmi <= 30 = "Overweight"
        | otherwise             = "You are a whale"
        where bmi = weight/height^2

calcBMis :: (RealFloat a)=> [(a,a)] -> [a]
calcBMis xs =
        [bmi w h | (w,h )<-xs]
        where bmi weight height = weight/height^2

myHead :: [a]->a
myHead xs =
        case xs of [] -> error "No head"
                   (x:_) -> x

quickSort ::(Ord a)=>[a]->[a]
quickSort []=[]
quickSort (x:xs)=
        let smallerSorted = quickSort[a | a <- xs, a<=x]
            biggerSorted = quickSort [a | a <- xs, a >x]
        in smallerSorted ++ [x] ++ biggerSorted

compareWithHundred :: (Num a, Ord a) =>a -> Ordering
compareWithHundred = compare 100

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

flip' :: (a -> b -> c) -> b -> a -> c
flip' f y x = f x y

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 999999..])
    where p x = (x `mod` 3829) == 0

-- the sum of all odd squares that are smaller than 10,000.
oddSquareSum :: Integer
--oddSquareSum = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))
--oddSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]
oddSquareSum =
    let oddSquares = filter odd $ map (^2) [1..]
        belowLimit = takeWhile (<10000) oddSquares
    in  sum belowLimit

main = do
--      print $ compareWithHundred 101
--      print $ applyTwice (*2) 10
--      print $ flip' zip [1,2,3,4,5] "hello"
--      print largestDivisible
--      print (map (\x -> x+1) [1..10])
--      print $ scanl (+) 0 [1..20]
      let myList = [[1..5],[3..6],[1..7]]
      print $ map (\ xs -> negate (sum (tail xs))) myList
      print $ map (negate . sum . tail) myList
      print oddSquareSum









--    stack build --exec LearningHaskell-exe
--    prompt "請輸入整數："
--    input <- getLine
--    let desc = descOddEven (read input::Int)
--    putStrLn (input ++ "是" ++ desc ++ "！")

