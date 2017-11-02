        -- 4.) FIBONACCI
--Sequência começa com 0 e 1
-- Condição números não naturais: -1 caso não seja.
fib :: Int -> Int
fib x | x < 0 = -1
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)
