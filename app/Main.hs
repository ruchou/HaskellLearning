module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO
import MyModule
import Control.Applicative

newtype ZipLt a = ZipLt [a] deriving (Show)

main :: IO ()
main = do
       let x - ZipLt [1,2]
       
