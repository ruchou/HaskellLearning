module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO

myTry :: Exception e => IO a -> IO (Either e a)
myTry a = catch toEither (return . Left)
        where toEither = do
                r <- a
                return (Right r)



main :: IO ()
main = do
        result <- myTry $ evaluate $ head []
        case result :: Either SomeException Int of
                Left ex -> putStrLn "exception"
                Right ele -> putStrLn $ show ele