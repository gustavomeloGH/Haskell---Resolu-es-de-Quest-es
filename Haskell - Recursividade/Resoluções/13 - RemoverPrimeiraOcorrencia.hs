        -- 13.) REMOVER-PRIMEIRA-0COR

removePrimeiraOcor :: Eq t => t -> [t] -> [t]
removePrimeiraOcor _ [] = []
removePrimeiraOcor t (a:x)   
    | (a == t) = x
    | otherwise = a : removePrimeiraOcor t x

