import System.Random

main = do
    gen <- newStdGen
    putStrLn $ take 20 (randomRs ('a','z') gen)
    gen' <- newStdGen
    putStrLn $ take 20 (randomRs ('a','z') gen')
