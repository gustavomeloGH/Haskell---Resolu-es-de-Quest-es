        -- 18.) INVERSE

--FORMA 1
inverse :: Eq t => [t] -> [t]
inverse [] = []
inverse (a:x) = reverse(a:x)

--FORMA 2
inverse' :: Eq t => [t] -> [t]
inverse' [] = []
inverse' (a:x) = inverse' x ++ [a]
