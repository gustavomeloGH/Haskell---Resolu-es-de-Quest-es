         -- 30.) PRIMEIRAS-MAIUSCULAS
firstCase :: String -> String
firstCase (b:[]) = b: []
firstCase (a:b:x)
    | (isSpace(a)) = a : toUpper b: firstCase x
    | otherwise =  toLower a: firstCase (b:x)

--FUNCAO AUXILIAR
capitalize :: String -> String
capitalize str = ([(toUpper(head str))] ++ (tail(firstCase str)))
