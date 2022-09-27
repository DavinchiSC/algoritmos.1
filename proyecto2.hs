--1-a
data Carrera = Matematica | Fisica | Computacion | Astronomia deriving (Eq, Show)


--1-b
titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica"
titulo Fisica = "Licenciatura en Fisica"
titulo Computacion = "Licenciatura en Ciencias de la Computacion"
titulo Astronomia = "Licenciatura en Astronomia" 


--1-c
data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Eq, Ord,Show) 


--1-d
cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'


--2 ya lo apliqué en el 1-c.


--3-a
minimoElemento :: Ord a => [a] -> a 
minimoElemento [x] = x
minimoElemento (x:xs) = min x (minimoElemento xs)   


--3-b
minimoElemento' :: (Bounded a,Ord a) => [a] -> a
minimoElemento' [] = maxBound
minimoElemento' [x] = x 
minimoElemento' (x:xs) = min x (minimoElemento' xs)


--3-c: Devuelve Re.


--4-a
type Ingreso = Int
data Cargo = Titular | Asociado | Adjunto | Asistente | Auxiliar deriving (Eq,Show)
data Area = Administrativa | Ensenanza | Economica | Postgrado deriving (Eq, Show)
data Persona = Decane | Docente Cargo | NoDocente Area | Estudiante Carrera Ingreso deriving (Eq, Show)

--4-b: El tipo del constructor Docente es Cargo -> Persona


--4-c
cuantos_doc :: [Persona] -> Cargo -> Int
cuantos_doc xs c = length (filter (== (Docente c)) xs)

--4-d: La función ya usa filter.


--5-a
data Alteracion = Bemol | Sostenido | Natural deriving Eq
data NotaMusical = Nota NotaBasica Alteracion

sonido :: NotaBasica -> Int
sonido Do = 1
sonido Re = 3
sonido Mi = 5
sonido Fa = 6
sonido Sol = 8
sonido La = 10
sonido Si = 12


--5-b
sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota x y) |y == Bemol = (sonido x) - 1
                           |y == Sostenido = (sonido x) + 1
                           |True = sonido x 


--5-c
instance Eq NotaMusical 
    where 
        (Nota x y) == (Nota w z) = sonidoCromatico (Nota x y) == sonidoCromatico (Nota w z)


--5-d
instance Ord NotaMusical 
    where 
        (Nota x y) <= (Nota w z) = sonidoCromatico (Nota x y) <= sonidoCromatico (Nota w z)


--6-a
primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing 
primerElemento (x:xs) = Just x 


--7-a-1
data Cola = VaciaC | Encolada Persona Cola deriving Show 

atender :: Cola -> Maybe Cola
atender VaciaC = Nothing
atender (Encolada p ps) = Just (ps)


--7-a-2
encolar :: Persona -> Cola -> Cola
encolar x VaciaC = Encolada x VaciaC
encolar x (Encolada p ps) = Encolada p (encolar x ps)

--7-a-3
busca :: Cola -> Cargo -> Maybe Persona
busca VaciaC c = Nothing
busca (Encolada (Docente x) xs) c |x == c = Just (Docente x)
                                  |otherwise = busca xs c
busca (Encolada p ps) c = busca ps c


--7-b: Cola se parece al tipo Lista.


data ListaAsoc a b = Vacia | Nodo a b ( ListaAsoc a b ) deriving Show


--8-a
type NumeroG = ListaAsoc String Int


--8-b
--1
la_long :: ListaAsoc a b -> Int
la_long Vacia = 0
la_long (Nodo no nu ls) = 1 + la_long ls


--2
la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
la_concat Vacia ls = ls 
la_concat (Nodo a b ls) ys = Nodo a b (la_concat ls ys) 


--3
la_agregar :: ListaAsoc a b -> a -> b -> ListaAsoc a b
la_agregar Vacia x y = Nodo x y (Vacia)
la_agregar (Nodo a b ls) x y =  Nodo a b (la_agregar ls x y)


--4
la_pares :: ListaAsoc a b -> [(a, b)]
la_pares Vacia = []
la_pares (Nodo a b ls) = (a,b) : (la_pares ls)


--5
la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b
la_busca Vacia x = Nothing 
la_busca (Nodo a b ls) x |a == x = Just b 
                         |otherwise = la_busca ls x 


--6
la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b
la_borrar x Vacia = Vacia
la_borrar x (Nodo a b ls) |a == x = ls
                          |otherwise = Nodo a b (la_borrar x ls) 