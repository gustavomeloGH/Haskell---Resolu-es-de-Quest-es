        -- 5.) ELEMENTO

-- FORMA NOVA
el :: Int -> [Int] -> Int
el _ [] = 0
el 1 x = head x
el n (a:x) = el (n-1) x

--FORMA 1
elemento :: Int -> [Int] -> Int
elemento _ [] = -1
elemento id (a:x) = (a:x)!!(id-1)


--FORMA 2
elemento' :: Int ->  [Int] -> Int
elemento' _ [] = -1
elemento' 0 _ = -1
elemento' id (a:x) 
    | (id <= 1) = a
    | otherwise = elemento' (id-1) x

