        -- 23.) SEQUENCIA-ATE

sequenciaAte :: Int -> Int -> [Int]
sequenciaAte 0 _ = []
sequenciaAte n i = i : sequenciaAte (n-1) (i+1)
