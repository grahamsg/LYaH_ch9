import System.IO
import System.Directory
import Data.List

main = do
    handle <- openFile "todo.txt" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle
    wHandle <- openFile "todo.txt" WriteMode
    hPutStr wHandle (unlines (init (lines contents)))
    hClose wHandle
        
