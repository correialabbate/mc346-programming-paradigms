aux1 tuple list count
    | count == (snd tuple) = list
    | otherwise = aux1 tuple ([fst tuple] ++ list) (count+1)

descomprime [] = []
descomprime (a:as) = (aux1 a [] 0) ++ descomprime as

aux2 (a:as) result count
    | null as = (result ++ [(a,count)])
    | a == head as = (aux2 as result (count+1))
    | otherwise = aux2 as (result ++ [(a,count)]) 1
comprime [] = []
comprime list = aux2 list [] 1