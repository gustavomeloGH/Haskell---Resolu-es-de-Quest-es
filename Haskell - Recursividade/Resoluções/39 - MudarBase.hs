
import Numeric (showHex, showIntAtBase)
import Data.Char (intToDigit)

        -- 39.) MUDA-BASE

mudaBase :: Int -> Int -> IO()
mudaBase b n = putStrLn $ showIntAtBase b intToDigit n "" 

