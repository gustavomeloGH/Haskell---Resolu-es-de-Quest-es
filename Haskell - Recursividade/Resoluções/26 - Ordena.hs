        -- 26.) ORDENA

ordena :: [Int] -> [Int]
ordena [] = []
ordena (a:x) = pegaMenorEle(a:x) : ordena(filter(/= pegaMenorEle(a:x)) (a:x))

--FUNCAO AUXILIAR
pegaMenorEle :: [Int] -> Int
pegaMenorEle [a] = a
pegaMenorEle (a:x) 
    | (a < pegaMenorEle x) = a
    | otherwise = pegaMenorEle x 
