module MyModule
(
    fromList
) where


fromList :: Eq a => [a] -> [a]
fromList [] = []
fromList (x:xs) = x : fromList (filter (\a -> a/=x) xs)

