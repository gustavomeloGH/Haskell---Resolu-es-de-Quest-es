        -- 28.) RODAR-DIREITA


rodarDireita :: Int -> [String] -> [String]
rodarDireita 0 (a:x) = (a:x)
rodarDireita _ [] = []
rodarDireita n (a:x) = rodarDireita (n-1) ([last(x)] ++ init(a:x))  

