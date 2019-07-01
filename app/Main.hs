module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO
import MyModule
import Control.Applicative

foo :: Maybe String
foo = do
    x <- Just 3
    y <- Just "!"
    Just (show x ++ y)

main :: IO ()
main = do
    let (Just val) = foo
    putStrLn $ val

