module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO
import MyModule
import Control.Applicative



account :: Maybe String -> Maybe Int -> Maybe String
account maybeName maybeBirth = do
    name <- maybeName
    birth <- maybeBirth
    return (name ++ (show birth))

main :: IO ()
main = do
    let name ="bill"
    let number = 10
    print $ account (Just name) (Just number)

