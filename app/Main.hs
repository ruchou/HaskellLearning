module Main where

import Lib
import System.IO
import Data.List
import MyModule


main :: IO ()
main = do
        print "hello"
        print "world"
        let s1 = fromList [1,2,3,4,3,2,1]
        print $ s1



