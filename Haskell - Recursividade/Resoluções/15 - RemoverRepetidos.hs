        -- 15.) REMOVER-REPETIDOS

removeRepetidos' :: Eq t => [t] -> [t]
removeRepetidos' [] = []
removeRepetidos' (a:x)
    | (a `elem` x) = removeRepetidos' x
    | otherwise = a : removeRepetidos' x

