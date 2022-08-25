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
--Ejercicio 4-a

existe' :: [a] -> (a -> Bool) -> Bool
existe' [] t = False
existe' (x:xs) t = (t x) || (existe' xs t)
--Ejercicio 4-b

sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] t = 0
sumatoria' (x:xs) t = (t x) + (sumatoria' xs t)
--Ejercicio 4-c

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] t = 1
productoria' (x:xs) t = (t x) * (productoria' xs t)
--Ejercicio 4-d

paraTodo :: [Bool] -> Bool
paraTodo (xs) =  paratodo' (xs) (==True)
--Ejercicio 5


esPar :: Int -> Bool
esPar x = (mod x 2) == 0

todosPares :: [Int] -> Bool
todosPares xs = paratodo' (xs) (esPar) 
--Ejercicio 6-a

esMultiplo :: Int -> Int -> Bool
esMultiplo y z = (mod y z) == 0

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo y xs = existe' (xs) (esMultiplo y)
--Ejercicio 6-b