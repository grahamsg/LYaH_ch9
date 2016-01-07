main = interact palen

palen :: String -> String
palen input = 
    let allLines = lines input
        palens = filter (\line -> isPalendrom line) allLines
        result = unlines palens
    in  result

isPalendrom :: String -> Bool
isPalendrom ([]) = True
isPalendrom (_:[]) = True
isPalendrom (x:xs) = (x == last xs) && isPalendrom (init xs)
