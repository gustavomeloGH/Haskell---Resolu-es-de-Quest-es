        -- 2.) MENOR DE TRÊS

--FORMA 1
menorDeTres :: Float -> Float -> Float -> Float
menorDeTres a b c = minimum[a,b,c]

--FORMA 2
menorDeTres' :: Float -> Float -> Float -> Float
menorDeTres' a b c
   | (a <= b && a <= c) = a
   | (b <= a && b <= c) = b
   | otherwise = c
