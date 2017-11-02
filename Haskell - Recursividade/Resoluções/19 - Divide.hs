        -- 19.) DIVIDE

divide :: Int -> [Int] -> [[Int]]
divide _ [] = []
divide n (a:b) 
     | ((length b) > (n-1)) = take n (a:b) : divide n (drop (n-1) b) 
     | otherwise = [[a]++b]

