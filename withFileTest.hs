import System.IO

main = do
    withFile "girlfriend.txt" ReadMode putHandle

putHandle :: Handle -> IO ()
putHandle handle = do
    contents <- hGetContents handle
    putStr contents
