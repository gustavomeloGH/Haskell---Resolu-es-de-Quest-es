        -- 3.) FATORIAL 
-- Condi��o n�meros n�o naturais: -1 caso n�o seja.
fatorial :: Int -> Int
fatorial x 
   | x < 0 = -1
fatorial 0 = 1
fatorial x = x * fatorial(x - 1)

