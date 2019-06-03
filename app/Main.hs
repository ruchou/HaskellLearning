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

queens :: Int -> [[Int]]
queens n = filter test (generate n)
    where generate 0      = [[]]
          generate k      = [q : qs | q <- [1..n], qs <- generate (k-1)]
          test []         = True
          test (q:qs)     = isSafe q qs && test qs
          isSafe   try qs = not (try `elem` qs || sameDiag try qs)
          sameDiag try qs = any (\(colDist,q) -> abs (try - q) == colDist) $ zip [1..] qs


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
--      print $ boomBangs[7..20]
--      let zipListA = [1..10]
--      let zipListB = ['A'..'Z']
--      print $ zip zipListA zipListB
--      print $ factorial 100
--      read "5"::Int
--      print $ factorial 10
--      let x:xs = [1..10]
--      let message = calcBMis [(42,1.65),(45,1.65)]
--      print $ myHead message
--      let toSortList = [89,88..1]
--      let sortedList = quickSort toSortList
--      print sortedList

      print $ length $ queens 8


--    stack build --exec LearningHaskell-exe
--    prompt "請輸入整數："
--    input <- getLine
--    let desc = descOddEven (read input::Int)
--    putStrLn (input ++ "是" ++ desc ++ "！")

