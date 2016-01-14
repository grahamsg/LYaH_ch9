import System.Random

coinList :: StdGen -> Integer -> [Bool]
coinList _ 0 = []
coinList gen n = 
    let (coin, newGen) = random gen :: (Bool, StdGen)
    in coin:(coinList newGen (n-1))
