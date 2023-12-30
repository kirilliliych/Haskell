main :: IO ()
main = do
  numberStr <- getLine
  let numbersQuantity = (read numberStr :: Int)
  inputListStr <- sequence [getLine | t <- [0 .. (numbersQuantity - 1)]]
  let inputList = map (\num -> read num :: Int) inputListStr
  putStrLn "Enter the operation, it should be \"'+\" or \"*\""
  op <- getLine
  case op of
    "+" -> print (sum inputList)
    "*" -> print (product inputList)
    _ -> putStrLn "ERROR: operation should be \"'+\" or \"*\""

