
        -- 14.) REMOVER-ULTIMO

--FORMA 1
removeUltimo :: Eq t => [t] -> [t]
removeUltimo [] = []
removeUltimo (a:x) = init(a:x)

--FORMA 2
removeUltimo' :: Eq t => [t] -> [t]
removeUltimo' [] = []
removeUltimo' (a:x) = take (length(a:x) - 1) (a:x)

--FORMA 3
removeUltimo2 :: Eq t => [t] -> [t]
removeUltimo2 [] = []
removeUltimo2 (a:x) 
    | (length(x) == 0) = removeUltimo2 x
    | otherwise = a: removeUltimo2 x

