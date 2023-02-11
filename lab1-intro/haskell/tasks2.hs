
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
opr :: String -> IO ()
opr x | opr == "add" = putStrLn "Addition"
      | opr == "subtract" = putStrLn "Subtraction"
      | opr == "multiply" = putStrLn "Multiplication"
      | otherwise = putStrLn "Unrecognised Operation"