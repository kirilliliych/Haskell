-- transforms a list of pairs into a list of first components
myUnzip :: [(a, b)] -> ([a], [b])
myUnzip = foldr (\(a, b) (as, bs) -> (a : as, b : bs)) ([], [])
