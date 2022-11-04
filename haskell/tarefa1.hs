trocatodos _ _ [] = []
trocatodos x y (a:as)
    | a == x = y:(trocatodos x y as)
    | otherwise = a:(trocatodos x y as)

minuseven [] _ = []
minuseven (a:as) count
    | count `mod` 2 == 0 = [a] ++ minuseven as (count+1)
    | otherwise = [-a] ++ minuseven as (count+1)

soma [] = 0
soma (x:xs) = x + (soma xs)

altsum [] = 0
altsum [x] = x
altsum (a:as) = soma ([a] ++ minuseven as 0)