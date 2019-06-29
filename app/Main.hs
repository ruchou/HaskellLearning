module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO
import MyModule
import Control.Applicative

main :: IO ()
main = do
       let a = ["1234","4567","12389"]
       let b = ["joe","bill","cartier"]
       let a_b = (++) <$> a <*> b
       print $ a_b
       let fs = pure (+) <*> [1..5]
       print $ fs <*> [10..15]
       let myList = filter (>6) $ (+) <$> [1..3] <*> [1..6]
       print myList
