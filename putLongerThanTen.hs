
main = do
    l <- getContents
    putStr (longLinesOnly l)

longLinesOnly :: String -> String
longLinesOnly input =
    let allLines = lines input
        longLines = filter (\line -> length line > 10) allLines
        result = unlines longLines
    in  result
