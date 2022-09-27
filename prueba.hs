esCero :: Int -> Bool
esCero x = x == 0 
esPositivo :: Int -> Bool
esPositivo x = x > 0 
esVocal :: Char -> Bool
esVocal a = (a == 'a') || (a == 'e') || (a == 'i') || (a == 'o') || (a == 'u')
paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (b:bs) = (b == True) && (paratodo bs)
sumatoria :: [Int] -> Int
sumatoria [] = 0 
sumatoria (x:xs) = x + (sumatoria xs)
productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * (productoria xs)
factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * (factorial (n-1))
promedio :: [Int] -> Int
promedio [] = 0
promedio (x:xs) = div (sumatoria (x:xs)) (length (x:xs))
pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n (x:xs) = (n == x) || (pertenece n xs)
paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] t = True 
paratodo' (a:as) t = (t a) &&  (paratodo' as t)
existe' :: [a] -> (a -> Bool) -> Bool
existe' [] t = False
existe' (x:xs) t = (t x) || (existe' xs t)
sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] t = 0
sumatoria' (x:xs) t = (t x) + (sumatoria' xs t)
productoria' :: [a] -> (a -> Int) -> Int
productoria' [] t = 1
productoria' (x:xs) t = (t x) * (productoria' xs t)
paratodo'' :: [Bool] -> Bool
paratodo'' (xs) =  paratodo' (xs) (==True)
esPar :: Int -> Bool
esPar x = (mod x 2) == 0
todosPares :: [Int] -> Bool
todosPares xs = paratodo' (xs) (esPar)
esMultiplo :: Int -> Int -> Bool
esMultiplo y z = (mod y z) == 0
hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo z xs = existe' (xs) (`esMultiplo` z)
sumaCuadrados :: Int -> Int
sumaCuadrados x = sumatoria' [0..x] (^2)
factorial' :: Int -> Int
factorial' n = productoria' [1..n] (*1)
multiplicaPares :: [Int] -> Int
multiplicaPares xs = productoria' (filter even xs) (*1)
duplicar :: [Int] -> [Int]
duplicar [] = []
duplicar (x:xs) = x*2 : (duplicar xs)
duplicar' :: [Int] -> [Int]
duplicar' xs = map (*2) xs 
soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs) | (mod x 2) == 0 = x : (soloPares xs)
                 | otherwise = soloPares xs
soloPares' :: [Int] -> [Int]
soloPares' xs = filter (esPar) xs
multiplicaPares' :: [Int] -> Int
multiplicaPares' xs = productoria (soloPares' xs)
primIgualesA :: Eq a => a -> [a] -> [a]
primIgualesA n [] = []
primIgualesA n (x:xs) | x == n = x : (primIgualesA n xs)
                      | otherwise = []
primIgualesA' :: Eq a => a -> [a] -> [a]
primIgualesA' n xs = takeWhile (== n) xs
primIguales :: Eq a => [a] -> [a]
primIguales [] = []
primIguales (x:[]) = [x]  
primIguales (y:(x:xs)) | y == x = x : (primIguales (y:(xs)))
                       | otherwise = [y]
primIguales' :: Eq a => [a] -> [a]
primIguales' [] = []
primIguales' (x:xs) = primIgualesA' x (x:xs) 
cuantGen :: (b -> b -> b) -> b -> [a] -> (a -> b) -> b
cuantGen op z [] t = z
cuantGen op z (x:xs) t = (t x) `op` (cuantGen op z xs t) 

paratodo4 :: [a] -> (a -> Bool) -> Bool
paratodo4 xs t = cuantGen (&&) (True) xs t 


existe4 :: [a] -> (a -> Bool) -> Bool
existe4 xs t = cuantGen (||) (False) xs t


sumatoria4 :: [a] -> (a -> Int) -> Int
sumatoria4 xs t = cuantGen (+) (0) xs t 


productoria4 :: [a] -> (a -> Int) -> Int
productoria4 xs t = cuantGen (*) (1) xs t 