        -- 1.) MENOR DE DOIS

--FORMA 1
menorDeDois :: Float -> Float -> Float
menorDeDois a b = minimum [a,b]

--FORMA 2
menorDeDois' :: Float -> Float -> Float
menorDeDois' a b 
   | a <= b = a
   | otherwise = b
