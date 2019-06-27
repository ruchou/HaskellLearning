module Main where

import Lib
import System.IO
import Data.List
import MyModule
import Text.Printf
import Control.Monad

echoUntil :: String -> IO()
echoUntil str = do
        input <- getLine
        if input /= str
            then do
                putStrLn (">> " ++ input)
                echoUntil str
            else
                return ()

echo :: IO()
echo = do
        when True $ do
                input <- getLine
                putStrLn $ ">>"++input
                echo


main :: IO ()
main = do
        echo





