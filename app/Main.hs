module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO


data ListException = EmptyListException String deriving (Show, Typeable)

instance Exception ListException

init' :: [a] ->  [a]
init' [] = throw $ EmptyListException "an empty list has no init"
init' (x:[]) = []
init' (x:xs) = x : init' xs

main :: IO ()
main = do
       init' []
