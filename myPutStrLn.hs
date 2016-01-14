myPutStrLn :: [Char] -> IO ()
myPutStrLn [] = putChar '\n'
myPutStrLn (x:xs) = do 
    putChar x 
    myPutStrLn xs
