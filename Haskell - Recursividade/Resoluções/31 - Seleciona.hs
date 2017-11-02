        -- 31.) SELECIONA

seleciona :: [String] -> [Int] -> [String]
seleciona _ [] = []
seleciona ax (b:y) = [(head (getElemChar ax b))] : seleciona ax y

--FUNCAO AUXILIAR
getElemChar ::  [String] -> Int -> String
getElemChar (a:[]) _ = a
getElemChar (a:x) n
    | (n <= 1) = a
    | otherwise = getElemChar x (n-1)

