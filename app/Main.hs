module Main where

import Lib
import System.IO
import Data.List
import MyModule
import Text.Printf


echoUntil :: String -> IO()
echoUntil str = do
        input <- getLine
        if input /= str
            then do
                putStrLn (">> " ++ input)
                echoUntil str
            else
                return ()


main :: IO ()
main = do
        echoUntil "test"





