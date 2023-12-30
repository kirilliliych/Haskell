myAny :: (a -> Bool) -> [a] -> Bool
myAny p = foldr ((||) . p) False

