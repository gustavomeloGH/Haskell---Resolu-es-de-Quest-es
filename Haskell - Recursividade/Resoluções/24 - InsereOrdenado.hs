        -- 24.) INSERE-ORDENADO

insereOrdenado :: Int -> [Int] -> [Int]
insereOrdenado _ (b:[]) = b : []
insereOrdenado n (a:b:x)
    | (n < head(a:b:x)) = [n] ++ (a:b:x)
    | (n > last(a:b:x)) = (a:b:x) ++ [n]
    | ((n > a) && (n < b)) = a : n : insereOrdenado n (b:x)
    | otherwise = a: insereOrdenado n (b:x)

