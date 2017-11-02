        -- 34.) SOMA-DIGITOS

sumd 0 = 0
sumd x = (x `mod` 10) + sumd (x `div` 10)
