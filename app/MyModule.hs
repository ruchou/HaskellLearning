module MyModule
(
    fromList,
    myPrint,
) where


fromList :: Eq a => [a] -> [a]
fromList [] = []
fromList (x:xs) = x : fromList (filter (\a -> a/=x) xs)


myPrint :: Show a => Maybe a -> IO ()
myPrint (Just x) = print x
myPrint n        = print n



