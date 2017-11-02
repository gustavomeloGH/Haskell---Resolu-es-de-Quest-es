        -- 7.) NRO-ELEMENTOS

--FORMA 1
nroElementos :: Eq t => [t] -> Int
nroElementos [] = -1
nroElementos (a:x) = length(a:x)

--FORMA 2
nroElementos' :: Eq t => [t] -> Int
nroElementos' [] = 0
nroElementos' (a:x) = 1 + nroElementos x
