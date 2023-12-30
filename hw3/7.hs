-- Функция curry осуществляет каррирование - преобразование функции, принимающей пару аргументов, в набор вложенных функций, каждая из которых уже есть функция одного аргумента: (A x B) -> C преобразовывается в A -> B -> C.
-- uncurry же осуществляет декаррирование, то есть обратное преобразование: A -> B -> C преобразовывается в (A x B) -> C.
-- Реализация:
myCurry :: ((a, b) -> c) -> a -> b -> c
myCurry func = \x y -> func (x, y)

myUncurry :: (a -> b -> c) -> ((a, b) -> c)
myUncurry func = \(x, y) -> func x y

-- Тестовые функции
toTestUncurry :: (Num a) => a -> a -> a
toTestUncurry x y = x + y

toTestCurry :: (Num a) => (a, a) -> a
toTestCurry x = fst x + snd x
