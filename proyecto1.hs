esCero :: Int -> Bool
esCero x = x == 0 
--Ejercicio 1-a


esPositivo :: Int -> Bool
esPositivo x = x > 0 
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


multiplicaPares :: [Int] -> Int
multiplicaPares xs = productoria' (filter even xs) (*1)
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


filtraPares :: [Int] -> [Int]
filtraPares [] = []
filtraPares (x:xs) | (mod x 2) == 0 = x : (filtraPares xs)
                    | otherwise = filtraPares xs 
--Ejercicio 9-a


filtraPares2 :: [Int] -> [Int]
filtraPares2 xs = filter (esPar) xs
--Ejercicio 9-b


multiplicaPares2 :: [Int] -> Int
multiplicaPares2 xs = productoria (filtraPares2 xs)
--Ejercicio 9-c


primIgualesA :: Eq a => a -> [a] -> [a]
primIgualesA n [] = []
primIgualesA n (x:xs) | x == n = x : (primIgualesA n xs)
                      | otherwise = []
--Ejercicio 10-a


primIgualesA' :: Eq a => a -> [a] -> [a]
primIgualesA' n xs = takeWhile (== n) xs
--Ejercicio 10-b


primIguales :: Eq a => [a] -> [a]
primIguales [] = []
primIguales (x:[]) = [x]  
primIguales (y:(x:xs)) | y == x = x : (primIguales (y:(xs)))
                       | otherwise = [y]
--Ejercicio 11-a


primIguales' :: Eq a => [a] -> [a]
primIguales' [] = []
primIguales' (x:xs) = primIgualesA' x (x:xs) 
--Ejercicio 11-b


--Ejercicio 12:

cuantGen :: (b -> b -> b) -> b -> [a] -> (a -> b) -> b
cuantGen op z [] t = z
cuantGen op z (x:xs) t = (t x) `op` (cuantGen op z xs t) 

--Definiciones del Ej. 4:
paratodo4 :: [a] -> (a -> Bool) -> Bool
paratodo4 xs t = cuantGen (&&) (True) xs t 


existe4 :: [a] -> (a -> Bool) -> Bool
existe4 xs t = cuantGen (||) (False) xs t


sumatoria4 :: [a] -> (a -> Int) -> Int
sumatoria4 xs t = cuantGen (+) (0) xs t 


productoria4 :: [a] -> (a -> Int) -> Int
productoria4 xs t = cuantGen (*) (1) xs t 




--13-a Está bien tipado y el patron cubre todos los casos. x tiene tipo a e y tiene tipo b.


--13-b Está mal tipado, la función debería tomar una lista de tuplas pero en su definición toma una tupla.


--13-c Está bien tipado pero el patrón no cumbre el caso de lista vacía.
-- x es de tipo (a,b) y xs [(a,b)]


--13-d También está bien tipado pero no cumbre el caso de la lista con una sola tupla ni el caso lista vacía.
-- x tipo a, y tipo b, a tipo a, b tipo b, xs tipo [(a,b)]


--13-e Bien tipado pero el patrón cubre sólo el caso en que el primer lugar de la tupla es 0 y es la única tupla de la lista. 
-- 0 tipo Int, a tipo a


--13-f Mal tipado porque si no pone "(Int,Int)" es porque a no es de tipo Int y luego en la definición usa un  Int en ese lugar asociado con a.
--Interpretación 2: a se deja así para que haskell infiera el tipo y estaría bien tipado. Pero sin cubrir todos los casos:
--Ahí cubre solo el caso donde la primera tupla de la lista es (x,1), deja fuera la lista vacía y todas las que no sean así.
-- x tipo Int, 1 tipo Int, xs tipo [(Int,a)]


--13-g Bien tipado y cubre todos los patrones.
-- a tipo (Int -> Int), b tipo Int


--13-h Bien tipado pero el patrón sólo cubre el caso donde el segundo argumento es 3.
-- a tipo (Int -> Int), 3 tipo Int


--13-i Mal  tipado, se están pasando 3 argumentos a una función que sólo toma 2 y el 0 (Int) no coincide con (Int -> Int) que es lo que espera la función.



--14:
--a) f :: (a, b) -> b
--   f (x,y) = y


--b) f :: (a, b) -> c
--   f (a,b) = [a]


--c) f :: (a -> b) -> a -> b
--   f t x = t x  


--d) f :: (a -> b) -> [a] -> [b]
--   f t xs = map t xs 


--e) f :: (a -> b) -> (b -> c) -> a -> c
--   f t y x = y (t x)