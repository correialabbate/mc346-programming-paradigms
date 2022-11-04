import Data.Char

soma1 :: Char -> [(Char,Int)] -> [(Char,Int)]

soma1 ch [] = [ (ch,1) ]
soma1 ch ((a,n):resto) 
    | ch==a = (a,n+1):resto
    | otherwise = (a,n):(soma1 ch resto)

aux1 [] ans = ans
aux1 (a:as) ans = aux2 (head a) (aux1 as ans)

aux2 :: Char -> [(Char,Int)] -> [(Char,Int)]
aux2 ch ans
    | ch == (intToDigit 1) = soma1 (intToDigit 1) ans
    | ch == (intToDigit 2) = soma1 (intToDigit 2) ans
    | ch == (intToDigit 3) = soma1 (intToDigit 3) ans
    | ch == (intToDigit 4) = soma1 (intToDigit 4) ans
    | ch == (intToDigit 5) = soma1 (intToDigit 5) ans
    | ch == (intToDigit 6) = soma1 (intToDigit 6) ans
    | ch == (intToDigit 7) = soma1 (intToDigit 7) ans
    | ch == (intToDigit 8) = soma1 (intToDigit 8) ans
    | ch == (intToDigit 9) = soma1 (intToDigit 9) ans
    | otherwise = ans

aux0 string = aux1 (words string) [(head(show ch),0) | ch <- [1..9]]

aux [] _ = []
aux ((a,b):as) total = (a,(fromIntegral b)/(fromIntegral total)):(aux as total)

benfordLaw string = aux rawList (sum $ map snd (rawList))
    where rawList = aux0 string