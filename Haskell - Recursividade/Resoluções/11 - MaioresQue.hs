
        -- 11.) MAIORES-QUE

--FORMA 1
maioresQue :: Float -> [Float] -> [Float]
maioresQue _ [] = []
maioresQue n (a:x) = filter (>n) (a:x)

--FORMA 2
maioresQue' :: Float -> [Float] -> [Float]
maioresQue' _ [] = []
maioresQue' n (a:x)
    | (a > n) = a : maioresQue n x
    | otherwise = maioresQue n x

-- FORMA NOVA
maiorQ :: Float -> [Float] -> [Float]
maiorQ _ [] = []
maiorQ n ax = [x | x <- ax, x > n]

