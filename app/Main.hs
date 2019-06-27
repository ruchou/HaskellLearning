module Main where

import Data.Typeable
import Prelude hiding (catch)
import Control.Exception
import System.Environment
import System.IO


main :: IO ()
main = catch
        ( do
                (fileName:_) <- getArgs
                contents <- readFile fileName
                putStrLn contents
        )
        (\(SomeException e) -> do print $ typeOf e
                                  print  e
        )








