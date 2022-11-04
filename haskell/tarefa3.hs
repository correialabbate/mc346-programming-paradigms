soma1 :: (Eq a) => a -> [(a,Int)] -> [(a,Int)]

soma1 ch [] = [ (ch,1) ]
soma1 ch ((a,n):resto) 
    | ch==a = (a,n+1):resto
    | otherwise = (a,n):(soma1 ch resto)

aux2 ch ans
    | ch == '0' = soma1 0 ans
    | ch == '1' = soma1 1 ans
    | ch == '2' = soma1 2 ans
    | ch == '3' = soma1 3 ans
    | ch == '4' = soma1 4 ans
    | ch == '5' = soma1 5 ans
    | ch == '6' = soma1 6 ans
    | ch == '7' = soma1 7 ans
    | ch == '8' = soma1 8 ans
    | ch == '8' = soma1 8 ans
    | ch == '9' = soma1 9 ans

aux1 string ans = map soma1 (string ans)

contadigitos string = map soma1 ()