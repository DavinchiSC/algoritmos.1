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

--Ejercicio 3

pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n (x:xs) = (n == x) || (pertenece n xs)

--Ejercicio 4
--a

paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] f = True
paratodo' (x:xs) f = (f x) && (paratodo' xs f)

--b

existe' :: [a] -> (a -> Bool) -> Bool
existe' [] f = False
existe' (x:xs) f = (f x) || (existe' xs f)

--c

sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] f = 0
sumatoria' (x:xs) f = (f x) + (sumatoria' xs f)

--d

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] f = 1
productoria' (x:xs) f = (f x) * (productoria' xs f)

--Ejercicio 5

paratodo2 :: [Bool] -> Bool
paratodo2 xs = paratodo' xs (== True)

--Ejercicio 6
--a

todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs (even)

--b

esMult :: Int -> Int -> Bool
esMult y x = (mod x y) == 0

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = existe' xs (esMult n)

--c

sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [0..(n-1)] (^2)

--d

esDiv :: Int -> Int -> Bool
esDiv x y = (mod x y) == 0

existeDivisor :: Int -> [Int] -> Bool
existeDivisor n xs = existe' xs (esDiv n)

--e

esPrimo:: Int -> Bool
esPrimo x = (x > 1) && not (existeDivisor x [2..(x-1)])

--f

factorial' :: Int -> Int
factorial' n = productoria [1..n]

--g

multiplicaPrimos :: [Int] -> Int
multiplicaPrimos [] = 1
multiplicaPrimos (x:xs) | esPrimo x = x * multiplicaPrimos xs
                        | otherwise = multiplicaPrimos xs

--h

