myAll :: (a -> Bool) -> [a] -> Bool
myAll p = foldr ((&&) . p) True

