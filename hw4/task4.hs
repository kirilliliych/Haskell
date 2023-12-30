nrem :: Int -> [a] -> [a]
nrem n = nremHelper n n

nremHelper :: Int -> Int -> [a] -> [a]
nremHelper m n [] = []
nremHelper m n (x : xs)
  | m == 1 = nremHelper n n xs
  | otherwise = x : nremHelper (m - 1) n xs

