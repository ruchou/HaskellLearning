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
       let a = (:) <$> Just 1 <*> Just [2..3]
       print a
