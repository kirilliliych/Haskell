rotts :: [a] -> [[a]]
rotts x = take (length x) (iterate getNextPermutation x)
  where
    getNextPermutation (x : xs) = xs ++ [x]
