-- list of pairs is converted into a pair of lists consisting of first and second components
myUnzip :: [(a, b)] -> ([a], [b])
myUnzip x = (map fst x, map snd x)
