
        -- 36.) COMPACTAR

compactar :: [Int] -> [[Int]]
compactar ([]) = []
compactar (b:[]) = [b] : []
compactar (a:b:x) 
     | (a == b) = [qtdRepete(a:b:x), a] : compactar (removeRepetidoAtual (a:b:x))
     | otherwise = [b] : compactar (b:x)

--FUNCAO AUXILIAR
qtdRepete :: [Int] -> Int
qtdRepete (b:[]) = 1
qtdRepete (a:b:x) 
    | (a == b) = 1 + qtdRepete (b:x)
    | otherwise = 1

--FUNCAO AUXILIAR
removeRepetidoAtual :: [Int] -> [Int]
removeRepetidoAtual (b:[]) = []
removeRepetidoAtual (a:b:x) 
    | (a == b) = removeRepetidoAtual (b:x)
    | otherwise = (b:x)

