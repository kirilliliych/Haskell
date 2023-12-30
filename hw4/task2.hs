segs :: [a] -> [[a]]
segs x = foldr1 (++) [segsHelper x i | i <- [1 .. (length x)]]

segsHelper :: [a] -> Int -> [[a]]
segsHelper x n = [slice m (m + n) x | m <- [0 .. (length x - n)]]

slice :: Int -> Int -> [a] -> [a]
slice from to x = take (to - from) (drop from x)
