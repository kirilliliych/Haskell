prefixes :: String -> [String]
prefixes (x : xs) = [] : map (x :) (prefixes xs)
prefixes [] = [[]]
