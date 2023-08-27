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
esPrimo x = (x > 1) && not (existe' [2..x-1] (esDiv x))

--f

factorial' :: Int -> Int
factorial' n = productoria' [1..n] (*1)

--g

filtraPrimos :: [Int] -> [Int]
filtraPrimos [] = []
filtraPrimos (x:xs) |esPrimo x = x : (filtraPrimos xs)
                    |otherwise = filtraPrimos xs

multiplicaPrimos :: [Int] -> Int
multiplicaPrimos xs = productoria' (filtraPrimos xs) (*1)

--h

fibLista :: (Int,Int) -> Int -> [Int]
fibLista (a,b) 0 = []
fibLista (a,b) n = (a + b) : (fibLista (b, a + b) (n - 1))

--prueba
-- -1+1 : fib (1,0)
-- = 1-1 : 1+0 : fib (0,1)
-- = 1-1 : 1+0 : 0+1 : fib (1,1)... 

fib :: Int -> Int
fib n = (fibLista (-1,1) n)!!(n-1)

fiblimite :: (Int,Int) -> Int 
fiblimite (x,y) | (fib x) < y = fiblimite (x+1,y)     
                | (fib x) >= y = x
            
-- esta funcion la hice para poder comparar y que corte cuando encuentre el número o al superarlo.

esFib :: Int -> Bool
esFib x = existe' (fibLista (-1,1) (fiblimite(1,x))) (==x)

--i

todosFib :: [Int] -> Bool
todosFib xs = paratodo' xs (esFib)

--Ejercicio 7
--La función map toma una lista, una función que pueda ser aplicada a los elementos de esa lista y devuelve otra lista con los elementos de la original afectados por la funcion dada.
--La función filter toma una lista, un predicado y devuelve la lista conformada por los elementos de la lista original que hayan cumplido con el predicado.
--map succ [1, -4, 6, 2, -8] es equivalente a la lista [2,-3,7,3,-7], donde la función map se encarga de aplicar succ (sumar 1) a cada elemento de la lista.
--filter esPositivo [1, -4, 6, 2, -8] equivale a la lista [1,6,2], filter se encarga de quedarse con los elementos que cumplan "esPositivo" y eliminar los que no.

--Ejercicio 8
--a

duplicaLista :: [Int] -> [Int]
duplicaLista [] = []
duplicaLista (x:xs) = 2*x : (duplicaLista xs)

--b

duplicaLista' :: [Int] -> [Int]
duplicaLista' xs = map (*2) xs

--Ejercicio 9
--a

--La definí en el punto 6 g como funcion auxiliar:
--filtraPrimos :: [Int] -> [Int]
--filtraPrimos [] = []
--filtraPrimos (x:xs) |esPrimo x = x : (filtraPrimos xs)
--                    |otherwise = filtraPrimos xs

--b

filtraPrimos' :: [Int] -> [Int]
filtraPrimos' xs = filter (esPrimo) xs

--c

multiplicaPrimos' :: [Int] -> Int
multiplicaPrimos' xs = productoria' (filtraPrimos' xs ) (*1)

--Ejercicio 10
--a

primIgualesA :: Eq a => a -> [a] -> [a]
primIgualesA e [] = []
primIgualesA e (x:xs) | e == x = x : (primIgualesA e xs)
                      | otherwise = []

--b

primIgualesA' :: Eq a => a -> [a] -> [a]
primIgualesA' e xs = takeWhile (==e) xs 

--Ejercicio 11
--a

primIguales :: Eq a => [a] -> [a]
primIguales [] = []
primIguales [x] = [x]
primIguales (x:(y:xs)) | y == x = y : (primIguales (x:xs))
                       | otherwise = primIguales [x]

--b

primIguales' :: Eq a => [a] -> [a]
primIguales' [] = []
primIguales' (x:xs) = primIgualesA' x (x:xs)