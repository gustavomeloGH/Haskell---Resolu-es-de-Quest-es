        -- 33.) PRIMO

primo :: Int -> Bool
primo 1 = True
primo n = length([x | x <- [1..n], n `mod` x == 0]) == 2

