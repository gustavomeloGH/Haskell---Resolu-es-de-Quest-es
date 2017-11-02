        -- 20.) INTERCALA

intercala :: Eq t => [t] -> [t] -> [t] 
intercala [] [] = []
intercala [] (a:x) = (a:x)
intercala (a:x) [] = (a:x)
intercala (a:x) (b:y) = a : b : concatena x y

