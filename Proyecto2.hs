--Ejercicio 1
--a

data Carrera = Matematica | Fisica | Computacion | Astronomia

--b

titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica"
titulo Fisica = "Licenciatura en Fisica"
titulo Astronomia = "Licenciatura en Astronomia"
titulo Computacion = "Licenciatura en Ciencias de la Computacion"

{-
ghci> titulo Fisica
"Licenciatura en Fisica"
ghci> titulo Astronomia
"Licenciatura en Astronomia"
-}

--c

data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Eq, Ord, Show)

--d

cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

{-
ghci> cifradoAmericano Do
'C'
ghci> cifradoAmericano La
'A'
-}

--Ejercicio 2
--a : Listo, agregué las clases Eq, Ord y Show a NotaBasica.

--Ejercicio 3
--a

minimoElemento :: Ord a => [a] -> a
minimoElemento [x] = x
minimoElemento (x:xs) = min x (minimoElemento xs)

{-
ghci> minimoElemento [1,2,3,9,7,0]
0
ghci> minimoElemento [1,2,3,9.6,7,0.2]
0.2
-}

--b

minimoElemento' :: (Bounded a, Ord a) => [a] -> a
minimoElemento' [] = maxBound
minimoElemento' (x:xs) = min x (minimoElemento' xs)

{-
ghci> minimoElemento' ([7,2,0,9,7,0] :: [Int])
0
ghci> minimoElemento' ([] :: [Bool])
True
-}

--c

--ghci> minimoElemento [Fa, La, Sol, Re, Fa]
--Re

--Ejercicio 4
--a

type Altura = Int
type NumCamiseta = Int
data Zona = Arco | Defensa | Mediocampo | Delantera deriving Show
data TipoReves = DosManos | UnaMano deriving Show
data Modalidad = Carretera | Pista | Monte | BMX deriving Show
data PiernaHabil = Izquierda | Derecha deriving Show
type ManoHabil = PiernaHabil
data Deportista = Ajedrecista | Ciclista Modalidad | Velocista Altura | Tenista TipoReves ManoHabil Altura | Futbolista Zona NumCamiseta PiernaHabil Altura deriving Show

--b: Ciclista :: Modaliad -> Deportista

--c

contar_velocistas :: [Deportista] -> Int
contar_velocistas [] = 0
contar_velocistas ((Velocista _):xs) = 1 + contar_velocistas xs
contar_velocistas (_:xs) = contar_velocistas xs

{-
ghci> contar_velocistas [Futbolista Arco 1 Derecha 191, Velocista 187, Ajedrecista, Velocista 174]
2
ghci> contar_velocistas [Futbolista Arco 1 Derecha 191, Velocista 187, Ajedrecista, Ciclista BMX]
1
-}

--d

mismaZona :: Zona -> Deportista -> Bool
mismaZona Arco (Futbolista Arco _ _ _) = True
mismaZona Defensa (Futbolista Defensa _ _ _) = True
mismaZona Mediocampo (Futbolista Mediocampo _ _ _) = True
mismaZona Delantera (Futbolista Delantera _ _ _) = True
mismaZona _ _ = False


contar_futbolistas :: [Deportista] -> Zona -> Int
contar_futbolistas [] z = 0
contar_futbolistas (x:xs) z | mismaZona z x = 1 + contar_futbolistas xs z
                            | otherwise = contar_futbolistas xs z

{-
ghci> contar_futbolistas [Futbolista Arco 1 Derecha 191, Velocista 187, Ajedrecista, Ciclista BMX] Defensa
0
ghci> contar_futbolistas [Futbolista Arco 1 Derecha 191, Velocista 187, Ajedrecista, Ciclista BMX, Futbolista Defensa 4 Izquierda 169] Defensa
1
-}

--e

contar_futbolistas' :: [Deportista] -> Zona -> Int
contar_futbolistas' xs z = length (filter (mismaZona z) xs)

{-
ghci> contar_futbolistas' [Futbolista Arco 1 Derecha 191, Velocista 187, Ajedrecista, Ciclista BMX] Defensa
0
ghci> contar_futbolistas' [Futbolista Arco 1 Derecha 191, Velocista 187, Ajedrecista, Ciclista BMX, Futbolista Defensa 4 Izquierda 169] Defensa
1
-}

--Ejercicio 5
--a

sonidoNatural :: NotaBasica -> Int
sonidoNatural Do = 0
sonidoNatural Re = 2
sonidoNatural Mi = 4
sonidoNatural Fa = 5
sonidoNatural Sol = 7
sonidoNatural La = 9
sonidoNatural Si = 11

--ghci> sonidoNatural Do
--0
--ghci> sonidoNatural Fa
--5

--b

data Alteracion = Bemol | Natural | Sostenido

--c

data NotaMusical = Nota NotaBasica Alteracion

--d

sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota a Bemol) = (sonidoNatural a) - 1
sonidoCromatico (Nota a Sostenido) = (sonidoNatural a) + 1
sonidoCromatico (Nota a Natural) = sonidoNatural a

--ghci> sonidoCromatico (Nota Sol Sostenido)
--8
--ghci> sonidoCromatico (Nota Fa Bemol)
--4


--e

instance Eq NotaMusical
    where
        a == b = sonidoCromatico a == sonidoCromatico b

--ghci> Nota Sol Sostenido == Nota La Bemol
--True
--ghci> Nota Sol Bemol  == Nota Fa Sostenido
--True
--ghci> Nota Sol Bemol  == Nota Fa Bemol
--False

--f

instance Ord NotaMusical
    where
        a <= b = sonidoCromatico a <= sonidoCromatico b

{-
ghci> Nota Sol Bemol  >=  Nota Do Sostenido
True
ghci> Nota Sol Bemol  <=  Nota Do Sostenido
False
-}

--Ejercicio 6
--a

primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing
primerElemento (x:xs) = Just x

{-
ghci> primerElemento []
Nothing
ghci> primerElemento [3,0,8,4]
Just 3
-}

--Ejercicio 7

data Cola = VaciaC | Encolada Deportista Cola deriving Show

--a.1

atender :: Cola -> Maybe Cola
atender VaciaC = Nothing
atender (Encolada a cs) = Just cs

{-
ghci> atender (Encolada Ajedrecista (Encolada (Velocista 181) (Encolada (Ciclista BMX) VaciaC)))
Just (Encolada (Velocista 181) (Encolada (Ciclista BMX) VaciaC))
ghci> atender (Encolada Ajedrecista (Encolada (Velocista 181) (Encolada (Ciclista BMX) (Encolada (Futbolista Arco 1 Derecha 197) VaciaC))))
Just (Encolada (Velocista 181) (Encolada (Ciclista BMX) (Encolada (Futbolista Arco 1 Derecha 197) VaciaC)))
-}

--a.2

encolar :: Deportista -> Cola -> Cola
encolar a VaciaC = Encolada a VaciaC
encolar a (Encolada b cs) = Encolada b (encolar a cs)

{-
ghci> encolar Ajedrecista (Encolada Ajedrecista (Encolada (Velocista 181) (Encolada (Ciclista BMX) (Encolada (Futbolista Arco 1 Derecha 197) VaciaC))))
Encolada Ajedrecista (Encolada (Velocista 181) (Encolada (Ciclista BMX) (Encolada (Futbolista Arco 1 Derecha 197) (Encolada Ajedrecista VaciaC))))
ghci> encolar (Velocista 165 ) (Encolada Ajedrecista (Encolada (Velocista 181) (Encolada (Ciclista BMX) (Encolada (Futbolista Arco 1 Derecha 197) VaciaC))))
Encolada Ajedrecista (Encolada (Velocista 181) (Encolada (Ciclista BMX) (Encolada (Futbolista Arco 1 Derecha 197) (Encolada (Velocista 165) VaciaC))))
-}

--a.3

busca :: Cola -> Zona -> Maybe Deportista
busca VaciaC z = Nothing
busca (Encolada f cs) z | mismaZona z  f = Just f
                        | otherwise = busca cs z

{-
ghci> busca (Encolada Ajedrecista (Encolada (Velocista 181) (Encolada (Ciclista BMX) (Encolada (Futbolista Arco 1 Derecha 197) VaciaC)))) Arco
Just (Futbolista Arco 1 Derecha 197)
ghci> busca (Encolada (Futbolista Defensa 5 Derecha 169) (Encolada Ajedrecista (Encolada (Velocista 181) (Encolada (Ciclista BMX) (Encolada (Futbolista Arco 1 Derecha 197) VaciaC))))) Defensa
Just (Futbolista Defensa 5 Derecha 169)
-}

--b: El tipo cola se parece al tipo Lista de deportistas ([Deportista])


--Ejercicio  8

data ListaAsoc a b = Vacia | Nodo a b ( ListaAsoc a b ) deriving Show

--a: type guia = ListaAsoc String Int

--b.1

la_long :: ListaAsoc a b -> Int
la_long Vacia = 0
la_long (Nodo a b xs) = 1 + la_long xs

{-
ghci> la_long (Nodo "David Cortes" 42511605 (Nodo "Rocio Sanchez" 41562388 (Vacia)))
2
ghci> la_long Vacia
0
-}

--b.2

la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
la_concat Vacia ys = ys
la_concat (Nodo a b  xs) ys = Nodo a b (la_concat xs ys)

{-
ghci> la_concat (Nodo "David Cortes" 42511605 (Nodo "Rocio Sanchez" 41562388 (Vacia))) (Nodo "Juan Musk" 26961545 (Nodo "Victor Gonzalez" 39562388 (Vacia)))
Nodo "David Cortes" 42511605 (Nodo "Rocio Sanchez" 41562388 (Nodo "Juan Musk" 26961545 (Nodo "Victor Gonzalez" 39562388 Vacia)))
ghci> la_concat (Nodo "David Cortes" 42511605 (Nodo "Rocio Sanchez" 41562388 (Vacia))) Vacia
Nodo "David Cortes" 42511605 (Nodo "Rocio Sanchez" 41562388 Vacia)
-}

--b.3

la_agregar :: Eq a => ListaAsoc a b -> a -> b -> ListaAsoc a b
la_agregar Vacia a b = Nodo a b Vacia
la_agregar (Nodo a b xs) c d | a == c = Nodo a d xs
                             | otherwise = Nodo a b (la_agregar xs c d) 

{-
ghci> la_agregar (Nodo "Juan Musk" 26961545 (Nodo "Victor Gonzalez" 39562388 (Vacia))) "as" 5
Nodo "Juan Musk" 26961545 (Nodo "Victor Gonzalez" 39562388 (Nodo "as" 5 Vacia))
ghci> la_agregar (Nodo "Juan Musk" 26961545 (Nodo "Victor Gonzalez" 39562388 (Vacia))) ("Juan Musk") 27988336
Nodo "Juan Musk" 27988336 (Nodo "Victor Gonzalez" 39562388 Vacia)
-}

--b.4

la_pares :: ListaAsoc a b -> [(a, b)]
la_pares Vacia = []
la_pares (Nodo a b xs) = (a, b) : la_pares xs

{-
ghci> la_pares (Nodo "Juan Musk" 26961545 (Nodo "Victor Gonzalez" 39562388 (Nodo "as" 5 Vacia)))
[("Juan Musk",26961545),("Victor Gonzalez",39562388),("as",5)]
ghci> la_pares (Nodo "David Cortes" 42511605 (Nodo "Rocio Sanchez" 41562388 (Vacia)))
[("David Cortes",42511605),("Rocio Sanchez",41562388)]
-}

--b.5

la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b
la_busca Vacia a = Nothing
la_busca (Nodo a b xs) x | a == x = Just b
                         | otherwise = la_busca xs x

{-
ghci> la_busca (Nodo "David Cortes" 42511605 (Nodo "Rocio Sanchez" 41562388 (Vacia))) "David Cortes"
Just 42511605
ghci> la_busca Vacia "a"
Nothing
-}

--b.6

la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b
la_borrar a Vacia = Vacia
la_borrar a (Nodo x y xs) | a == x = xs
                          | otherwise = Nodo x y (la_borrar a xs)

{-
ghci> la_borrar "Rocio Sanchez" (Nodo "David Cortes" 42511605 (Nodo "Rocio Sanchez" 41562388 (Nodo "Juan Musk" 26961545 (Nodo "Victor Gonzalez" 39562388 Vacia))))
Nodo "David Cortes" 42511605 (Nodo "Juan Musk" 26961545 (Nodo "Victor Gonzalez" 39562388 Vacia))
ghci> la_borrar "Alicia" (Nodo "Alicia" 6550 Vacia)
Vacia
-}

--Ejercicio 9

data Arbol a = Hoja | Rama ( Arbol a ) a ( Arbol a ) deriving Show

--a

a_long :: Arbol a -> Int
a_long Hoja = 0
a_long (Rama x a y) = 1 + (a_long x + a_long y)

{-
ghci> a_long (Rama Hoja "hola" (Rama Hoja "Chau" Hoja))
2
ghci> a_long (Rama (Rama Hoja "Hijo" (Rama Hoja "Nieto1" Hoja)) "Señor" (Rama Hoja "Hija" (Rama Hoja "Nieto2" Hoja)))
5
-}

--b

a_hojas :: Arbol a -> Int
a_hojas Hoja = 1
a_hojas (Rama x a y) = a_hojas x + a_hojas y

{-
ghci> a_hojas (Rama (Rama Hoja "Hijo" (Rama Hoja "Nieto1" Hoja)) "Señor" (Rama Hoja "Hija" (Rama Hoja "Nieto2" Hoja)))
6
ghci> a_hojas (Rama (Rama (Rama (Rama Hoja "Cubos" Hoja) "Al horno" (Rama Hoja "Rodajas" Hoja)) "Cocinada" (Rama (Rama Hoja "Rejilla" Hoja) "Frita" (Rama Hoja "Baston" Hoja))) "Papa"  (Rama Hoja "Cruda" (Rama Hoja "Nada" Hoja)))
11
-}

--c

a_inc :: Num a => Arbol a -> Arbol a
a_inc Hoja = Hoja
a_inc (Rama a x b) = Rama (a_inc a) (x+1) (a_inc b)

{-
ghci> a_inc (Rama (Rama (Rama (Rama Hoja 3 Hoja) 5 (Rama Hoja 7 Hoja)) 6 (Rama (Rama Hoja 4 Hoja) 1  (Rama Hoja 3 Hoja))) 2  (Rama Hoja 0 (Rama Hoja 8 Hoja)))
Rama (Rama (Rama (Rama Hoja 4 Hoja) 6 (Rama Hoja 8 Hoja)) 7 (Rama (Rama Hoja 5 Hoja) 2 (Rama Hoja 4 Hoja))) 3 (Rama Hoja 1 (Rama Hoja 9 Hoja))
ghci> a_inc (Rama (Rama (Rama (Rama Hoja 1 Hoja) 2 (Rama Hoja 3 Hoja)) 4 (Rama (Rama Hoja 5 Hoja) 6 (Rama Hoja 7 Hoja))) 8  (Rama Hoja 9 (Rama Hoja 10 Hoja)))
Rama (Rama (Rama (Rama Hoja 2 Hoja) 3 (Rama Hoja 4 Hoja)) 5 (Rama (Rama Hoja 6 Hoja) 7 (Rama Hoja 8 Hoja))) 9 (Rama Hoja 10 (Rama Hoja 11 Hoja))
-}

--d

a_map :: (a -> b) -> Arbol a -> Arbol b
a_map t Hoja = Hoja
a_map t (Rama a x b) = Rama (a_map t a) (t x) (a_map t b)

{-
ghci> a_map (+1) (Rama (Rama (Rama (Rama Hoja 3 Hoja) 5 (Rama Hoja 7 Hoja)) 6 (Rama (Rama Hoja 4 Hoja) 1  (Rama Hoja 3 Hoja))) 2  (Rama Hoja 0 (Rama Hoja 8 Hoja)))
Rama (Rama (Rama (Rama Hoja 4 Hoja) 6 (Rama Hoja 8 Hoja)) 7 (Rama (Rama Hoja 5 Hoja) 2 (Rama Hoja 4 Hoja))) 3 (Rama Hoja 1 (Rama Hoja 9 Hoja))
-}

a_inc' :: Num a => Arbol a -> Arbol a
a_inc' a = a_map (+1) a

{-
ghci> a_inc' (Rama (Rama (Rama (Rama Hoja 3 Hoja) 5 (Rama Hoja 7 Hoja)) 6 (Rama (Rama Hoja 4 Hoja) 1  (Rama Hoja 3 Hoja))) 2  (Rama Hoja 0 (Rama Hoja 8 Hoja)))
Rama (Rama (Rama (Rama Hoja 4 Hoja) 6 (Rama Hoja 8 Hoja)) 7 (Rama (Rama Hoja 5 Hoja) 2 (Rama Hoja 4 Hoja))) 3 (Rama Hoja 1 (Rama Hoja 9 Hoja))
-}

--Ejercicio 10
--a

data ABB a = VacioABB | RamaABB (ABB a) a (ABB a) deriving Show

--b

insertarABB :: Ord a => a -> ABB a -> ABB a
insertarABB x VacioABB = RamaABB VacioABB x VacioABB
insertarABB x (RamaABB a y b) | x < y = RamaABB (insertarABB x a) y b
                              | otherwise = RamaABB a y (insertarABB x b)

{-
ghci> insertarABB 5 (RamaABB (RamaABB  (RamaABB  VacioABB 7 VacioABB)  8 (RamaABB  VacioABB 9 VacioABB)) 10 (RamaABB  (RamaABB VacioABB 11 VacioABB) 12 (RamaABB VacioABB 13 VacioABB)))
RamaABB (RamaABB (RamaABB (RamaABB VacioABB 5 VacioABB) 7 VacioABB) 8 (RamaABB VacioABB 9 VacioABB)) 10 (RamaABB (RamaABB VacioABB 11 VacioABB) 12 (RamaABB VacioABB 13 VacioABB))
ghci> insertarABB 6 (RamaABB (RamaABB (RamaABB (RamaABB VacioABB 5 VacioABB) 7 VacioABB) 8 (RamaABB VacioABB 9 VacioABB)) 10 (RamaABB (RamaABB VacioABB 11 VacioABB) 12 (RamaABB VacioABB 13 VacioABB)))
RamaABB (RamaABB (RamaABB (RamaABB VacioABB 5 (RamaABB VacioABB 6 VacioABB)) 7 VacioABB) 8 (RamaABB VacioABB 9 VacioABB)) 10 (RamaABB (RamaABB VacioABB 11 VacioABB) 12 (RamaABB VacioABB 13 VacioABB))
-}

--c

buscarABB :: Eq a => a -> ABB a -> Bool
buscarABB x VacioABB = False
buscarABB x (RamaABB a y b) | x == y = True
                            | otherwise = buscarABB x a || buscarABB x b 

{-
ghci> buscarABB  3 (RamaABB (RamaABB (RamaABB (RamaABB VacioABB 5 VacioABB) 7 VacioABB) 8 (RamaABB VacioABB 9 VacioABB)) 10 (RamaABB (RamaABB VacioABB 11 VacioABB) 12 (RamaABB VacioABB 13 VacioABB)))
False
ghci> buscarABB  11 (RamaABB (RamaABB (RamaABB (RamaABB VacioABB 5 VacioABB) 7 VacioABB) 8 (RamaABB VacioABB 9 VacioABB)) 10 (RamaABB (RamaABB VacioABB 11 VacioABB) 12 (RamaABB VacioABB 13 VacioABB)))
True
-}

--d

mayor_a_todos :: Ord a => a -> ABB a -> Bool
mayor_a_todos x VacioABB = True
mayor_a_todos x (RamaABB a y b) = (x > y)  && (mayor_a_todos x a) && (mayor_a_todos x b)

menor_a_todos :: Ord a => a -> ABB a -> Bool
menor_a_todos x VacioABB = True
menor_a_todos x (RamaABB a y b) = (x < y) && (menor_a_todos x a) && (menor_a_todos x b) 

verificarABB :: Ord a => ABB a -> Bool
verificarABB VacioABB = True
verificarABB (RamaABB a x b) = (mayor_a_todos x a) && (menor_a_todos x b)

ejemplo1 = RamaABB (RamaABB VacioABB 10 VacioABB) 2 (RamaABB VacioABB 11 VacioABB)
ejemplo2 = RamaABB (RamaABB  (RamaABB VacioABB 1 VacioABB) 3 (RamaABB VacioABB 7 VacioABB)) 5 (RamaABB VacioABB 8 (RamaABB VacioABB 10 VacioABB))
ejemplo3 = (RamaABB (RamaABB (RamaABB (RamaABB VacioABB 5 VacioABB) 7 VacioABB) 8 (RamaABB VacioABB 9 VacioABB)) 10 (RamaABB (RamaABB VacioABB 11 VacioABB) 12 (RamaABB VacioABB 13 VacioABB)))
ejemplo4 = (RamaABB (RamaABB (RamaABB (RamaABB VacioABB 1 VacioABB) 7 VacioABB) 8 (RamaABB VacioABB 9 VacioABB)) 10 (RamaABB (RamaABB VacioABB 4 VacioABB) 12 (RamaABB VacioABB 13 VacioABB)))
{-
ghci> verificarABB ejemplo1
False
ghci> verificarABB ejemplo2
False
ghci> verificarABB ejemplo3
True
ghci> verificarABB ejemplo4
False
-}
