        -- 22.) INTERCESSAO

intercessao :: Eq t => [t] -> [t] -> [t] 
intercessao [] [] = []
intercessao [] _ = []
intercessao (a:x) (b:y) 
    | (pertence' a (b:y)) = a: intercessao x (b:y)
    | otherwise =  intercessao x (b:y)

