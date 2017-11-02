        -- 17.) GERA-SEQUENCIA

geraSequencia :: Int -> [Int]
geraSequencia x 
    | (x < 0) = []
    | otherwise = reverse(sequencia x)

--FUNCAO AUXILIAR
sequencia :: Int -> [Int]
sequencia 0 = []
sequencia n =  (n * (-1)) : n : sequencia (n-1)
