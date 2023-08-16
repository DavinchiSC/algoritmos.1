--Ejercicio 1
--a

esCero :: Int -> Bool
esCero x = x == 0

--b

esPositivo :: Int -> Bool
esPositivo x = x >= 0

--c

esVocal :: Char -> Bool
esVocal c = c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'

--d

valorAbsoluto :: Int -> Int
valorAbsoluto x | x >= 0 = x
                | otherwise = -x

--Ejercicio 2
--a

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (b:bs) = b == True && paratodo bs

--b 

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

--c

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

--d

factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * factorial (n - 1)

--e

promedio :: [Int] -> Int
promedio xs = div (sumatoria xs) (length xs)