--Ejercicio 1

esCero :: Int -> Bool
esCero x = x == 0


esPositivo :: Int -> Bool
esPositivo x = x > 0

esVocal :: Char -> Bool
esVocal a = a == 'a' || a == 'e' || a == 'i' || a == 'o' || a == 'u'

--Ejercicio 2

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) = (x == True) && (paratodo xs)


sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + (sumatoria xs)


productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * (productoria xs)


factorial :: Int -> Int
factorial 0 = 1
factorial x = x * (factorial (x-1))


promedio :: [Int] -> Int
promedio [] = 0
promedio xs = div (sumatoria xs) (length xs)

--Ejercicio 3

pertenece  :: Int -> [Int] -> Bool
pertenece x [] = False
pertenece x (y:ys) = (x == y) || pertenece x ys

--Ejercicio 4

paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] t = True
paratodo' (x:xs) t = t x && paratodo' xs t


existe' :: [a] -> (a -> Bool) -> Bool
existe' [] t = False
existe' (x:xs) t = t x || existe' xs t


sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] t = 0
sumatoria' (x:xs) t = t x + sumatoria' xs t


productoria' :: [a] -> (a -> Int) -> Int
productoria' [] t = 1
productoria' (x:xs) t = t x * productoria' xs t

--Ejercicio 5

paratodo'' :: [Bool] -> Bool
paratodo'' [] = True
paratodo'' xs = paratodo' xs (==True)

--Ejercicio 6

esPar :: Int -> Bool
esPar x |mod x 2 == 0 = True
        |otherwise = False
        
todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs esPar


esMult :: Int -> Int -> Bool
esMult x y |mod y x == 0 = True
           |otherwise = False
           
hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo x ys = existe' ys (esMult x)


sumaCuadrados :: Int -> Int
sumaCuadrados x = sumatoria' [0..x] (^2)


factorial' :: Int -> Int
factorial' x = productoria' [1..x] (+0)


multiplicaPares :: [Int] -> Int
multiplicaPares xs = productoria' (filter esPar xs) (+0)

--Ejercicio 7
--la Función map toma una funcion, una lista, aplica la funcion a cada elemento de dicha lista y devuelve otra con sus elementos ya afectados.
--la función filter recibe un predicado, una lista y devuelve otra lista conformada por los elementos de la original que satisfagan el parametro dado.
--la expresión map succ [1, -4, 6, 2, -8] equivale a sumar 1 a cada elemento de la lista, el resultado que obtendria al ejecutarlo seria [2,-3,7,3,-7].
--la expresión filter esPositivo [1, -4, 6, 2, -8] equivale a evaluar si cada uno de los elementos de la lista es positivo y armar una nueva lista con los que lo cumplan. En éste caso quedaría [1,6,2].

--Ejercicio 8

duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = x*2 : (duplica xs)


duplica' :: [Int] -> [Int]
duplica' xs = map (*2) xs

--Ejercicio 9

soloPares :: [Int] -> [Int]
soloPares [] = [] 
soloPares (x:xs)| esPar x == True = x : (soloPares xs)
                | otherwise = soloPares xs
                
soloPares' :: [Int] -> [Int]
soloPares' xs = filter esPar xs 


multiplicaPares' :: [Int] -> Int
multiplicaPares' xs = productoria (filter esPar xs)



iguales :: Eq a => [a] -> Bool
iguales [] = True
iguales [x] = True
iguales (x:y:ys) = x == y && iguales (y:ys)

mult :: Int -> Int -> Int
mult a  0 = 0
mult a b =  a + (mult a (b-1))


f :: Int -> Int 
f 0 = 0
f x = mult x (mult x x)

creciente :: [Int] -> Bool
creciente [] = True
creciente [x] = True
creciente (x:y:ys) = x <= y && creciente (y:ys)


prod  :: [Int] -> [Int] -> Int 
prod [] ys = 0
prod xs [] = 0
prod (x:xs) (y:ys) = x * y + (prod xs ys) 

gfi :: Int -> [Int] -> Int
gfi n [] = minBound
gfi n (x:xs) | n == (sumatoria (x:xs)) = max 0 ((gfi (n+x) xs) + 1)
             | otherwise = (gfi (n+x) xs) + 1

fi ::  [Int] -> Int
fi xs = gfi 0 xs