-- Просто по определению дружественных чисел
amicable :: Integer -> Integer -> Bool
amicable num1 num2 = num1 == sumProperFactors num2 && num2 == sumProperFactors num1

-- Проверка всех чисел от 1 до х на то, подходят ли они в качестве делителя
sumProperFactors :: Integer -> Integer
sumProperFactors 1 = 1
sumProperFactors x = ifDividesThenSum x (x - 1)

-- Проверяем текущую пару делимое/потенциальный делитель, складываем с результатом от проверки подобных пар,
-- где делитель меньше
ifDividesThenSum :: Integer -> Integer -> Integer
ifDividesThenSum _ 1 = 1
ifDividesThenSum dividend possibleDivisor = ifDividesThenGetDivisor dividend possibleDivisor + ifDividesThenSum dividend (possibleDivisor - 1)

-- Возвращаем делитель, если тот делит делимое нацело
ifDividesThenGetDivisor :: Integer -> Integer -> Integer
ifDividesThenGetDivisor dividend divisor | dividend `rem` divisor == 0 = divisor | otherwise = 0
