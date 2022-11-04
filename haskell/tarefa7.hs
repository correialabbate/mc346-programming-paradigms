addNodeToEmptyDistances node1 node2 (a:as) | node1 == a

generateEmptyDistances [] _ ans = ans
generateEmptyDistances (a:as) origin ans = addNodeToEmptyDistances (fst a) (snd a) ans

-- tarefa7 [] _ _ = 0
tarefa7 graph origin destin = generateEmptyDistances graph origin []