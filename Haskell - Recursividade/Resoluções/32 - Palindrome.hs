       -- 32.) PALINDROME


palindrome :: String -> Bool
palindrome [] = False
palindrome (a:x)
    | (length (a:x) == 1) = True
    | (length (a:x) == 2) = (a == last(a:x))
    | (a == last(x)) = palindrome (init(x))
    | otherwise = False

