esCero :: Int -> Bool
esCero x |x == 0 = True
         |otherwise = False 
--Ejercicio 1-a

esPositivo :: Int -> Bool
esPositivo x |x > 0 = True
             |otherwise = False
--Ejercicio 1-b

esVocal :: Char -> Bool
esVocal a = (a == 'a') || (a == 'e') || (a == 'i') || (a == 'o') || (a == 'u')
--Ejercicio 1-c

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (b:bs) = (b == True) && (paratodo bs)
--Ejercicio 2-a

sumatoria :: [Int] -> Int
sumatoria [] = 0 
sumatoria (x:xs) = x + (sumatoria xs)
--Ejercicio 2-b

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * (productoria xs)
--Ejercicio 2-c

factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * (factorial (n-1))
--Ejercicio 2-d

promedio :: [Int] -> Int
promedio [] = 0
promedio (x:xs) = div (sumatoria (x:xs)) (length (x:xs))
--Ejercicio 2-e

pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n (x:xs) = (n == x) || (pertenece n xs) 
--Ejercicio 3

paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] t = True 
paratodo' (a:as) t = (t a) &&  (paratodo' as t)
--Ejercicio 4