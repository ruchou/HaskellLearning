module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO


myLast :: [a] -> a
myLast [] = error "this is an error"
myLast (x:[]) = x
myLast (x:xs) = myLast xs

main :: IO ()
main = do
        let ele = myLast [1..10]
        putStrLn . show $ ele