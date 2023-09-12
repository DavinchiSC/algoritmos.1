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
data Zona = Arco | Defensa | Mediocampo | Delantera
data TipoReves = DosManos | UnaMano
data Modalidad = Carretera | Pista | Monte | BMX
data PiernaHabil = Izquierda | Derecha
type ManoHabil = PiernaHabil
data Deportista = Ajedrecista | Ciclista Modalidad | Velocista Altura | Tenista TipoReves ManoHabil Altura | Futbolista Zona NumCamiseta PiernaHabil Altura

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

