-- The following function definition contains a syntax error:
-- (To enable the code, delete contents of lines 10 and 3 and line -- on line 24)
{-
sayHello :: IO ()
sayHello =
  do
  let name = "Alice"
   putStrLn "hello"
  putStrLn name
-}

ask :: String -> Int -> IO ()
ask prompt count =
  do
  putStrLn (prompt ++ replicate count '!')
  line <- getLine
  if line == "quit"
    then putStrLn("quitting...")
  else if line == ""
    then ask prompt (count + 1)
  else putStrLn ("you said: " ++ reverse line)
    

main :: IO ()
main =
  do
  --sayHello
  ask "please say something" 0
