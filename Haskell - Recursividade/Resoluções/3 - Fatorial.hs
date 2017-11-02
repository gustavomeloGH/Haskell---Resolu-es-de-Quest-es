        -- 3.) FATORIAL 
-- Condição números não naturais: -1 caso não seja.
fatorial :: Int -> Int
fatorial x 
   | x < 0 = -1
fatorial 0 = 1
fatorial x = x * fatorial(x - 1)

