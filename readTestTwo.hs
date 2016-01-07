import System.IO

main = do
    handle <- openFile "girlfriend.txt" ReadWriteMode
    contents <- hGetContents handle
    putStr contents
    hPutStrLn handle "baz"
--    contentsNow <- hGetContents handle
--    putStr contentsNow
    hClose handle
