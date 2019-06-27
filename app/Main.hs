module Main where

import Lib
import System.IO
import Data.List
import MyModule
import Text.Printf

hanoi 1 a _ c = printf "Move from %c to %c\n" a c
hanoi n a b c = do
        hanoi (n-1) a c b
        hanoi 1 a b c
        hanoi (n-1) b a c

main :: IO ()
main = do
        hanoi 5 'a' 'b' 'c'



