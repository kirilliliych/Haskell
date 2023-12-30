unique :: (Eq a) => [a] -> [a]
unique [] = []
unique (x : xs)
  | x `elem` xs = unique xs
  | otherwise = x : unique xs

part :: Int -> Int -> [[Int]]
part m n = unique (partHelper m n)

partHelper :: Int -> Int -> [[Int]]
partHelper 1 n = [[n]]
partHelper m 0 = [0] : partHelper (m - 1) 0
partHelper m n
  | m <= n =
      map (\(x : xs) -> (x + 1) : xs) (partHelper m (n - 1))
        ++ map (1 :) (partHelper (m - 1) (n - 1))
        ++ map (0 :) (partHelper (m - 1) n)
        ++ map (\ns -> ns ++ [0]) (partHelper (m - 1) n)
        ++ map (\ns -> ns ++ [1]) (partHelper (m - 1) (n - 1))
  | otherwise = []

