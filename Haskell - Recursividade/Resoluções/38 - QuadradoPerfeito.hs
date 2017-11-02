

        -- 38.) QUADRADO-PERFEITO

quadradoP :: Int -> Bool
quadradoP n = length([x | x <- [1..n], (x*x)== n]) == 1
