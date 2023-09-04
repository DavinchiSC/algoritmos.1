--Ejercicio 1
--a

esCero :: Int -> Bool
esCero x = x == 0

--Main> esCero 0
--True
--Main> esCero 5
--False

--b

esPositivo :: Int -> Bool
esPositivo x = x >= 0

--Main> esPositivo (-2)
--False
--Main> esPositivo 7
--True

--c

esVocal :: Char -> Bool
esVocal c = c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'

--Main> esVocal 's'
--False
--Main> esVocal 'e'
--True

--d

valorAbsoluto :: Int -> Int
valorAbsoluto x | x >= 0 = x
                | otherwise = -x

--Main> valorAbsoluto (-4)
--4
--Main> valorAbsoluto 6
--6

--Ejercicio 2
--a

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (b:bs) = b == True && paratodo bs

--Main> paratodo [True,False,True]
--False
--Main> paratodo [True,True,True]
--True

--b 

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

--Main> sumatoria [2,4,6]
--12
--Main> sumatoria [2,1,(-1)]
--2

--c

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

--Main> productoria [1,2,3,4,5]
--120
--Main> productoria [3,3,3]
--27

--d

factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * factorial (n - 1)

--Main> factorial 5
--120
--Main> factorial 2
--2

--e

promedio :: [Int] -> Int
promedio xs = div (sumatoria xs) (length xs)

--Main> promedio [8,6,9,10]
--8
--Main> promedio [8,1,9,3]
--5

--Ejercicio 3

pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n (x:xs) = (n == x) || (pertenece n xs)

--Main> pertenece 2 [1,4,7,2]
--True
--Main> pertenece 2 [1,4,7,9]
--False

--Ejercicio 4
--a

paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] f = True
paratodo' (x:xs) f = (f x) && (paratodo' xs f)

--paratodo' [2,4,6,9] (even)
--False
--Main> paratodo' [2,4,6,0] (even)
--True

--b

existe' :: [a] -> (a -> Bool) -> Bool
existe' [] f = False
existe' (x:xs) f = (f x) || (existe' xs f)

--Main> existe' [1,2,3,4] (even)
--True
--Main> existe' [1,2,3,4] (>8)
--False

--c

sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] f = 0
sumatoria' (x:xs) f = (f x) + (sumatoria' xs f)

--Main> sumatoria' [2,4,8] ( `div` 2)
--7
--Main> sumatoria' [2,4,8] (+2)
--20

--d

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] f = 1
productoria' (x:xs) f = (f x) * (productoria' xs f)

--Main> productoria' [2,8,4] (id)
--64
--Main> productoria' [2,8,4] (+1)
--135

--Ejercicio 5

paratodo'' :: [Bool] -> Bool
paratodo'' xs = paratodo' xs (== True)

--Main> paratodo'' [True,True]
--True
--Main> paratodo'' []
--True

--Ejercicio 6
--a

todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs (even)

--Main> todosPares [12,15,5,4]
--False
--Main> todosPares [12,12,24,4]
--True

--b

esMult :: Int -> Int -> Bool
esMult y x = (mod x y) == 0

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = existe' xs (esMult n)

--Main> hayMultiplo 2 [1,5,8]
--True
--Main> hayMultiplo 3 [1,5,8,27,4]
--True


--c

sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [0..(n-1)] (^2)

--sumaCuadrados 3
--5
--Main> sumaCuadrados 4
--14

--d

esDiv :: Int -> Int -> Bool
esDiv x y = (mod x y) == 0

existeDivisor :: Int -> [Int] -> Bool
existeDivisor n xs = existe' xs (esDiv n)

--Main> existeDivisor 45 [12,3,8]
--True
--Main> existeDivisor 45 [12,2,8,13]
--False

--e

esPrimo:: Int -> Bool
esPrimo x = (x > 1) && not (existe' [2..x-1] (esDiv x))

--Main> esPrimo 9
--False
--Main> esPrimo 83
--True

--f

factorial' :: Int -> Int
factorial' n = productoria' [1..n] (*1)

--Main> factorial' 6
--720
--Main> factorial' 5
--120

--g

filtraPrimos :: [Int] -> [Int]
filtraPrimos [] = []
filtraPrimos (x:xs) |esPrimo x = x : (filtraPrimos xs)
                    |otherwise = filtraPrimos xs

multiplicaPrimos :: [Int] -> Int
multiplicaPrimos xs = productoria' (filtraPrimos xs) (*1)

--Main> multiplicaPrimos [1,4,7,2]
--14
--Main> multiplicaPrimos [1,4,2,11]
--22

--h

fibLista :: (Int,Int) -> Int -> [Int]
fibLista (a,b) 0 = []
fibLista (a,b) n = (a + b) : (fibLista (b, a + b) (n - 1))

--Toma una tupla (pnsada para siempre usarse con -1,1) y 

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

--Main> esFib 87
--False
--Main> esFib 13
--True

--i

todosFib :: [Int] -> Bool
todosFib xs = paratodo' xs (esFib)

--Main> todosFib [8,1,0,13]
--True
--Main> todosFib [8,1,0,13,12]
--False

--Ejercicio 7

-- La función map toma una lista, una función que pueda ser aplicada a los elementos de esa lista y devuelve otra lista con los elementos de la original afectados por la funcion dada.
-- La función filter toma una lista, un predicado y devuelve la lista conformada por los elementos de la lista original que hayan cumplido con el predicado.
-- map succ [1, -4, 6, 2, -8] es equivalente a la lista [2,-3,7,3,-7], donde la función map se encarga de aplicar succ (sumar 1) a cada elemento de la lista.
-- filter esPositivo [1, -4, 6, 2, -8] equivale a la lista [1,6,2], filter se encarga de quedarse con los elementos que cumplan "esPositivo" y eliminar los que no.

--Ejercicio 8
--a

duplicaLista :: [Int] -> [Int]
duplicaLista [] = []
duplicaLista (x:xs) = 2*x : (duplicaLista xs)

--Main> duplicaLista [1,2,3,4]
--[2,4,6,8]
--Main> duplicaLista [6,3,8]
--[12,6,16]

--b

duplicaLista' :: [Int] -> [Int]
duplicaLista' xs = map (*2) xs

--Main> duplicaLista' [5,4,0]
--[10,8,0]
--Main> duplicaLista' [1,0,23]
--[2,0,46]

--Ejercicio 9
--a

--La definí en el punto 6 g como funcion auxiliar:
--filtraPrimos :: [Int] -> [Int]
--filtraPrimos [] = []
--filtraPrimos (x:xs) |esPrimo x = x : (filtraPrimos xs)
--                    |otherwise = filtraPrimos xs

--Main> filtraPrimos [1,2,4,6,8]
--[2]
--Main> filtraPrimos [1,5,7,13]
--[5,7,13]

--b

filtraPrimos' :: [Int] -> [Int]
filtraPrimos' xs = filter (esPrimo) xs

--Main> filtraPrimos' [1,5,7,13]
--[5,7,13]
--Main> filtraPrimos' [3,0,2]
--[3,2]

--c

multiplicaPrimos' :: [Int] -> Int
multiplicaPrimos' xs = productoria' (filtraPrimos' xs ) (*1)

--Main> multiplicaPrimos' [2,2,45,6]
--4
--Main> multiplicaPrimos' [2,9,4,6]
--2

--Ejercicio 10
--a

primIgualesA :: Eq a => a -> [a] -> [a]
primIgualesA e [] = []
primIgualesA e (x:xs) | e == x = x : (primIgualesA e xs)
                      | otherwise = []

--Main> primIgualesA 'a' "aarbol"
--"aa"
--Main> primIgualesA 7 [7,7,7,8,1]
--[7,7,7]

--b

primIgualesA' :: Eq a => a -> [a] -> [a]
primIgualesA' e xs = takeWhile (==e) xs 

--Main> primIgualesA' 3 [1,2,3,4]
--[]
--Main> primIgualesA' 3 [3,3,5,6]
--[3,3]

--Ejercicio 11
--a

primIguales :: Eq a => [a] -> [a]
primIguales [] = []
primIguales [x] = [x]
primIguales (x:(y:xs)) | y == x = y : (primIguales (x:xs))
                       | otherwise = primIguales [x]

--Main> primIguales "22 años"
--"22"
--Main> primIguales [0,0,0]
--[0,0,0]

--b

primIguales' :: Eq a => [a] -> [a]
primIguales' [] = []
primIguales' (x:xs) = primIgualesA' x (x:xs)

--Main> primIguales' [0,0,3,5]
--[0,0]
--Main> primIguales' "KKKK l"
--"KKKK"

--Ejercicio 12

cuantGen :: (b -> b -> b) -> b -> [a] -> (a -> b) -> b
cuantGen op z [] t = z
cuantGen op z (x:xs) t = op (t x) (cuantGen op z xs t)

--Definiciones del ejercicio 4 con cuantGen

paratodo''' :: [a] -> (a -> Bool) -> Bool
paratodo''' xs t = cuantGen (&&) (True) xs t 

--Main> paratodo''' "aeiou" (esVocal)
--True
--Main> paratodo''' [1,2,3] (even)
--False

existe'' :: [a] -> (a -> Bool) -> Bool
existe'' xs t = cuantGen (||) (False) xs t

--

sumatoria'' :: [a] -> (a -> Int) -> Int
sumatoria'' xs t = cuantGen (+) (0) xs t

--

productoria'' :: [a] -> (a -> Int) -> Int
productoria'' xs t = cuantGen (*) (1) xs t

--

--Ejercicio 13

distanciaEdicion :: [Char] -> [Char] -> Int
distanciaEdicion [] ys = length ys
distanciaEdicion xs [] = length xs
distanciaEdicion (x:xs) (y:ys) | x == y = distanciaEdicion xs ys
                               | otherwise = 1 + distanciaEdicion xs ys

--Ejercicio 14

primQueCumplen :: [a] -> (a -> Bool) -> [a]
primQueCumplen [] p = []
primQueCumplen (x:xs) p | p x = x : (primQueCumplen xs p)
                        | otherwise = []

--Ejercicio 15
--a
-- Está bien tipado y el patron cubre todos los casos. x tiene tipo a e y tiene tipo b. (x,y) tipo (a,b)


--b
-- Está mal tipado, la función debería tomar una lista de tuplas pero en su definición toma una tupla.


--c 
-- Está bien tipado pero el patrón no cumbre el caso de lista vacía.
-- x es de tipo (a,b) y xs [(a,b)]. (x:xs) tipo [(a,b)].


--d 
-- También está bien tipado pero no cumbre el caso de la lista con una sola tupla ni el caso lista vacía.
-- x tipo a, y tipo b, a tipo a, b tipo b, xs tipo [(a,b)].  ((x, y) : ((a, b) : xs)) tipo [(a,b)].


--e 
-- Bien tipado pero el patrón cubre sólo el caso en que el primer lugar de la tupla es 0 y es la única tupla de la lista. 
-- 0 tipo Int, a tipo a. [(0, a)] tipo [(Int,a)]


--f 
-- Bien tipado. Pero sin cubrir todos los casos:
-- Ahí cubre solo el caso donde la primera tupla de la lista es (x,1), deja fuera la lista vacía y todas las que no sean así.
-- x tipo Int, 1 tipo Int, xs tipo [(Int,Int)]. ((x, 1) : xs) tipo  (Int,Int) : [(Int,Int)]


--g 
-- Bien tipado y cubre todos los patrones.
-- a tipo (Int -> Int), b tipo Int. 


--h 
-- Bien tipado pero el patrón sólo cubre el caso donde el segundo argumento es 3.
-- a tipo (Int -> Int), 3 tipo Int


--i 
-- Mal  tipado, se están pasando 3 argumentos a una función que sólo toma 2 y el 0 (Int) no coincide con (Int -> Int) que es lo que espera la función.

--Ejercicio 16

--a

-- f :: (a, b) -> b
-- f (x,y) = y

--b

-- f :: (a, b) -> c
-- f (a,b) = [a]
-- otra definicion posible: f (a,b) = [(a,b)]

--c

-- f :: (a -> b) -> a -> b
-- f t x = t x  

--d

-- f :: (a -> b) -> [a] -> [b]
-- f t xs = map t xs 
-- otra definicion posible: 
-- f t [] = [] 
-- f t (x:xs) = t x : (f t xs)