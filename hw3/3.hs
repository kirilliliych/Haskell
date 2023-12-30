-- a) xor через три образца (из определения):
xor :: Bool -> Bool -> Bool
xor True False = True
xor False True = True
xor _ _ = False

-- b) maj3 через не более чем четыре образца (перебор вариантов, при которых результатом будет True)
maj3 :: Bool -> Bool -> Bool -> Bool
maj3 True True _ = True
maj3 True _ True = True
maj3 _ True True = True
maj3 _ _ _ = False
