module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO
import MyModule

main :: IO ()
main = do
       let m1 = fmap (+1) (Just 3)
       let m2 = fmap (*3) m1
       let m3 = fmap show m2
       myPrint m3
       let m4 = fmap (show . (*3) . (+1)) (Just 3)
       myPrint m4
