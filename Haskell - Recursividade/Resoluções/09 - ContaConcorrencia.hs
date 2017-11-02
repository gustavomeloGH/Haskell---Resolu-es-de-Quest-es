        -- 9.) CONTA-OCORRENCIAS
contaOcorrencias :: Eq t => t -> [t] -> Int
contaOcorrencias _ [] = 0
contaOcorrencias t (a:x)
    | (a == t) = 1 + contaOcorrencias t x
    | otherwise = contaOcorrencias t x


-- FORMA NOVA
contaO :: Eq t => t -> [t] -> Int
contaO _ [] = -1
contaO n ax = length [x | x <- ax, (x == n)] 
