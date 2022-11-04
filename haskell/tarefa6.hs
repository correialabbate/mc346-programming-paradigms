data Arvore a = Vazia | No a (Arvore a) (Arvore a)

data ArvoreAux = ArvoreAux Bool Int No 

-- height :: (Ord a, Num a) => Arvore a -> a
-- height Vazia = -1
-- height (No k l r) = 1 + (max (height l) (height r))

balanced :: (Ord a, Num a) => Arvore a -> Bool
balanced Vazia = True
balanced  (No k l r)    | not (balanced l) = False
                        | not (balanced r) = False
                        | abs ((height l) - (height r)) > 1 = False
                        | otherwise = True
