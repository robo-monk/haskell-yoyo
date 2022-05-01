-- String === [Char]
---------------------------------

-- get acronym of a phrase
module Acronym (abbreviate) where
    abbreviate :: String -> String -- fn declaration

    abbreviate = unwords . map head . group . words
        where
            group :: [String] -> [[String]]
            group [] = []
            group (x:xs) = (x : takeWhile (== x) xs) : group (dropWhile (== x) xs)
