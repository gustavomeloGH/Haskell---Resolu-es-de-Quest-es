
        -- 35.) BOLHA-ORD
-- PEGUEI PRONTO DA INTERNET

bolha :: [Int] -> [Int]
bolha [] = []
bolha lista = bolhaOrd lista (length lista)

bolhaOrd :: [Int] -> Int -> [Int]
bolhaOrd lista 0 = lista
bolhaOrd lista n = bolhaOrd (troca lista) (n-1)

troca :: [Int] -> [Int]
troca [x] = [x]
troca (x:y:zs) 
    | x > y  = y : troca (x:zs)
    | otherwise = x : troca (y:zs)

