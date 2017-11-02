
        -- 37.) TUPLA

tupla :: [Int] -> ([Int], [Int])
tupla [] = ([], [])
tupla ax = (filter (odd) ax, filter (even) ax)
