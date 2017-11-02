         -- 29.) TODAS-MAIUSCULAS

upperCase :: String -> String
upperCase [] = []
upperCase (a:x) = toUpper a : upperCase x
