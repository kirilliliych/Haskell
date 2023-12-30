fib n = fibReq n 0 1 -- вычисление n-го числа Фибоначчи

fibReq 0 prev cur = prev
fibReq 1 prev cur = cur
fibReq steps_left prev cur = fibReq (steps_left - 1) cur (prev + cur)

f :: Integer -> Integer
f n = sum (map (\num -> num ^ fib n) [0 .. n])
