rotts :: [a] -> [[a]]
rotts x = scanl getNextPermutation x [1..(length x - 1)]
  where
    getNextPermutation (x : xs) n = xs ++ [x]
