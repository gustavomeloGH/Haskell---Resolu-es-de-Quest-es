        -- 12.) CONCATENA

--FORMA 1
concatena :: Eq t => [t] -> [t] -> [t] 
concatena [] [] = []
concatena [] b = b
concatena a [] = a
concatena a b = a ++ b

