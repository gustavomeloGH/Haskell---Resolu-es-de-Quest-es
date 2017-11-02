        -- 10.) UNICA-OCORRENCIA

--FORMA 1
unicaOcorrencia :: Eq t => t -> [t] -> Bool
unicaOcorrencia _ [] = False
unicaOcorrencia n (a:x) = (length (filter (== n) (a:x)) == 1)

--FORMA 2
unicaOcorrencia' :: Eq t => t -> [t] -> Bool
unicaOcorrencia' _ [] = False
unicaOcorrencia' n (a:x) = (ocorrencias n (a:x) == 1)

--FUNCAO AUXILIAR
ocorrencias :: Eq t => t -> [t] -> Int
ocorrencias _ [] = 0
ocorrencias t (a:x) 
   | (a == t) = (1 + (ocorrencias t x))
   | otherwise = ocorrencias t x

-- FORMA NOVA
unicaO :: Eq t => t -> [t] -> Bool
unicaO n ax = (length [x | x <- ax, (x == n)] == 1)
