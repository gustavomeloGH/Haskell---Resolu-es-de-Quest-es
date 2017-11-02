        -- 27.) RODAR-ESQUERDA

rodarEsquerda :: Int -> [String] -> [String]
rodarEsquerda 0 (a:x) = (a:x)
rodarEsquerda _ [] = []
rodarEsquerda n (a:x) = rodarEsquerda (n-1) (x ++ [a])  
