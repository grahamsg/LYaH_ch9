import System.Environment
import Data.List

-- find the index of the --file argument
-- if it is there, then 


main = do
    args <- getArgs
    let fileArgIndex = elemIndex "--file" args
    if (fileArgIndex == Nothing)
        then let fileName = "todo.txt"
        else let fileName = 
