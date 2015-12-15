myPutStrLn :: String -> IO Char
myPutStrLn [] = putChar '\n'
myPutStrLn (x:xs) = do 
    putChar x 
    myPutStrLn xs
