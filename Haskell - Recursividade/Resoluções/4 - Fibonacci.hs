        -- 4.) FIBONACCI
--Sequ�ncia come�a com 0 e 1
-- Condi��o n�meros n�o naturais: -1 caso n�o seja.
fib :: Int -> Int
fib x | x < 0 = -1
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)
