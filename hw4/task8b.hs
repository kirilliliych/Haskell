myDropWhile :: (a -> Bool) -> [a] -> [a]
myDropWhile p [] = []
myDropWhile p (x : xs)
  | p x = myDropWhile p xs
  | otherwise = x : xs
