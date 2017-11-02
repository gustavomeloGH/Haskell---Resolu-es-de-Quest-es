        -- 21.) UNIAO

uniao :: Eq t => [t] -> [t] -> [t] 
uniao ax by = removeRepetidos'(concatena ax by)
