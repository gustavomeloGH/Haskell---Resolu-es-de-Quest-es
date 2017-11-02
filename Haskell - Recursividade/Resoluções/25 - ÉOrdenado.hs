        -- 25.) ORDENADO-?


ordenados :: [Int] -> Bool
ordenados (b:[]) = True
ordenados (a:b:x) 
    | (a < b) = ordenados (b:x)
    | otherwise = False
