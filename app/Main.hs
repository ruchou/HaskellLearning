module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO


main :: IO ()
main = do
       result <- fmap (show .(*2).read ) getLine
       putStrLn result


