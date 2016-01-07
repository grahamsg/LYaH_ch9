import System.IO
import Data.List

main = do
    handle <- openFile "todo.txt" ReadMode
    contents <- hGetContents handle
    let todoTasks = lines contents
        numberedTasks = zipWith (\m line -> show m ++ " - " ++ line) [0..] todoTasks
    putStrLn "These are your todo items:"
    putStr $ unlines numberedTasks
    putStrLn "Which one do you want to delete?"
    numberString <- getLine
    let number = read numberString
        newTodoItems = delete (todoTasks !! number) todoTasks
    hClose handle
    wHandle <- openFile "todo.txt" WriteMode
    hPutStr wHandle $ unlines newTodoItems
    hClose wHandle
