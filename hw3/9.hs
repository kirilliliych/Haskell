-- a)
-- Возьмем в качестве f и g следующие функции (f9a и g9a соответственно):
-- f9a :: (C -> (A, B)) -> (C -> A, C -> B)
-- f9a T = (fst . T, snd . T)

-- g9a :: (C -> A, C -> B) -> (C -> (A, B))
-- (g9a (T1, T2)) C = (T1 C, T2 C)

-- Проверим по определению изоморфизма:
-- f9a . g9a = \x. f9a (g9a x) = \x. f9a (\c. (fst x c, snd x c)) =
-- \x. (fst . (\c. (fst x c, snd x c)), snd . (\c. (fst x c, snd x c))) =
-- \x. (\c fst (x c), \c snd (x c)) = \x. (fst . x, snd . x) = \x. x = id

-- g9a . f9a = \x. g9a (f9a x) = \x. g9a (fst . x, snd . x) =
-- \x. \c. ((fst . x) c, (snd . x) c) = \x. \c. (fst (x c), snd (x c)) =
-- \x. \c. (x c) = \x. x = id

-- b)
-- Возьмем в качестве f и g следующие функции (f9b и g9b соответственно):
-- f9b :: (C -> (B -> A)) -> ((B, C) -> A)
-- (f9b T) (B, C) = T C B

-- g9b :: ((B, C) -> A) -> (C -> (B -> A))
-- (g9b T) C B = T (B, C)

-- Проверим определение изоморфизма:
-- f9b . g9b = \x. f9b (g9b x) = \x. f9b (\c b. x (b, c)) =
-- \x. (\x (b, c). x c b) (\c1 b1. x (b1, c1)) =
-- \x. (\(b, c). (\c1 b1. x (b1, c1)) c b) =
-- \x. (\(b, c). x (b, c)) = \x. (\p. x p) = \x. x = id

-- g9b . f9b = \x. g9b (f9b x) = \x. g9b (\(b, c). x c b) =
-- \x. (\x c b. x (b, c)) (\(b1, c1) . x c1 b1) =
-- \x. (\c b. (\(b1, c1). x c1 b1) (b, c)) = \x. (\c b. x c b) =
-- \x. (\c. x c) = \x. x = id
