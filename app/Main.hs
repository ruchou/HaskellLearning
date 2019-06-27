module Main where

import Lib
import System.IO
import Data.List
import MyModule
import Text.Printf
import Control.Monad
import Data.List
import Control.Exception


myHead :: [a] -> Either String a
myHead [] = Left "an empty list has no head .. XD"
myHead (x:xs) = Right x

main :: IO ()
main = do
    result <- try ( return $ head [])
    case result :: Either SomeException Int of
            Left ex -> putStrLn $ "exception"
            Right ele -> putStrLn . show $ ele





