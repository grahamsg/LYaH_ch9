import Control.Monad
import Data.Char

main = forever $ do 
    str <- getLine
    putStrLn (map toUpper str)
