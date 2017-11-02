        -- 8.) MAIOR

--FORMA 1
maior :: [Float] -> Float
maior [] = 0
maior (a:x) = maximum(a:x)

--FORMA 2
maior' :: [Float] -> Float
maior' [] = 0
maior' (a:x) 
     | (a >= maior' x) = a
     | otherwise = maior' x
