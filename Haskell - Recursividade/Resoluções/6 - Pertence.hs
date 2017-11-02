        -- 6.) PERTENCE

--FORMA 1
pertence :: Eq t => t -> [t] -> Bool
pertence _ [] = False
pertence t (a:x) = t `elem` (a:x)

--FORMA 2
pertence' :: Eq t => t -> [t] -> Bool
pertence' _ [] = False
pertence' t (a:x) 
   | (a == t) = True
   | otherwise = pertence' t x 

