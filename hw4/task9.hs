myFoldr1 :: (a -> a -> a) -> [a] -> a
myFoldr1 f (x : xs) = foldr f x xs

lmax :: (Ord a) => [a] -> a
lmax = myFoldr1 max2
  where
    max2 m n
      | m >= n = m
      | otherwise = n
