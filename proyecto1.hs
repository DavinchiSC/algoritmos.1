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
hayMultiplo z xs = existe' (xs) (`esMultiplo` z)
--Ejercicio 6-b


sumaCuadrados :: Int -> Int
sumaCuadrados x = sumatoria' [0..x] (^2)
--Ejercicio 6-c


factorial' :: Int -> Int
factorial' n = productoria [1..n]
--Ejercicio 6-d


filtraPares :: [Int] -> [Int]
filtraPares xs = filter (esPar) xs

multiplicaPares :: [Int] -> Int
multiplicaPares xs = productoria' (filtraPares xs) (*1)
--Ejercicio 6-e


--Ejercicio 7: La función map toma una lista, una función que pueda ser aplicada a los elementos de esa lista y devuelve otra lista con los elementos de la original afectados por la funcion dada.
--La función filter toma una lista, un predicado y devuelve la lista conformada por los elementos de la lista original que hayan cumplido con el predicado.
--map succ [1, -4, 6, 2, -8] es equivalente a la lista [2,-3,7,3,-7], donde la función map se encarga de aplicar succ (sumar 1) a cada elemento de la lista.
--filter esPositivo [1, -4, 6, 2, -8] equivale a la lista [1,6,2], filter se encarga de quedarse con los elementos que cumplan "esPositivo" y eliminar los que no.


duplicaLista :: [Int] -> [Int]
duplicaLista [] = []
duplicaLista (x:xs) = x*2 : (duplicaLista xs)
--Ejercicio 8-a


duplicaLista' :: [Int] -> [Int]
duplicaLista' xs = map (*2) xs 
--Ejercicio 8-b


filtraPares' :: [Int] -> [Int]
filtraPares' [] = []
filtraPares' (x:xs) | (mod x 2) == 0 = x : (filtraPares' xs)
                    | otherwise = filtraPares' xs 
--Ejercicio 9-a


--filtraPares :: [Int] -> [Int]
--filtraPares xs = filter (esPar) xs
--Ejercicio 9-b