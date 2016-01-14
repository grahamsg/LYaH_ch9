name = getLine

main = do
    putStrLn "Hello, what's your name?"
    yourName <- name
    putStrLn ("Hey " ++ yourName ++ ", you rock!")
