-- a)
-- По транзитивности легко видеть, что подходит композиция (разумеется, сначала в ней будет второй аргумент, затем первый).
-- Результат в консоли подтверждает, что тип выражения соответствует требуемому.
composition = \(x, y) -> x . y

-- b)
-- Предпишем функции требуемый тип:
expr1b :: [Double -> Double] -> Int -> Int
expr1b = \dl -> (\x -> x)