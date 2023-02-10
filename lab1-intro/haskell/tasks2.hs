
{-
oneplusone = putStrLn "1 + 1 = 2"
main = do
    putStrLn "Welcome to the programme. Please enter your name"
    name <- getLine
    putStrLn("Hello " ++ name ++ ", hope you like Haskell.")
    oneplusone
-}


main = do
    putStrLn "Please enter a number"
    input <- getLine 
    let x = (read input :: Int)
    putStrLn( show (sgn (x)) )
sgn :: (Ord a, Num a) => a -> Int
sgn x | x < 0  = -1
      | x == 0 = 0
      | otherwise = 1
