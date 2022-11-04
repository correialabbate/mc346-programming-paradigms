countWords [] = 0
countWords (a:as) = 1 + (countWords as)

countCharsAux "" = 0
countCharsAux (a:as) = 1 + (countCharsAux as)

countChars count [] = count
countChars count (a:as) = count + (countChars (countCharsAux a) as)

generateTupleAux (a:as) = (countWords (a:as),countChars 0 (a:as)) 

generateTuple "" = (0,0)
generateTuple string = generateTupleAux (words string)

contaPalavrasLetras entryString = generateTuple entryString
