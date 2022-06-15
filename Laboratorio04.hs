--CURRIFICACION

-- La firma de la funcion maximo, se ve de la sig. manera:
-- maximo :: Int -> (Int -> Int)
-- Es una funcion que recibe un entero Innt ->
-- que espera otra funcion (Int->Int), que recibe un entero y regresa otro entero
maximo  a b 
    | a > b = a
    | otherwise = b
-- maximo b
-- | 4 > b = 4
-- | otherwise = b

compara :: Int -> Int -> String
compara a b 
    | a == b = "Igual"
    | b > a = "Mayor"
    | b < a = "Menor"

compara1729 :: Int->String 
compara1729 =  compara 1729

divide10 = (/10)

esMayuscula = (`elem` ['A'..'Z'])

compara2 = (2 `compara`)

-- FUNCIONES DE ORDEN SUPERIOR

-- map
-- Es una funcion de orden superior que recibe otra funcion como parametro
-- Recibe una funcion: (a -> b)
-- Recibe una lista: [a]
-- Devuelve una lista: [b]

-- map :: (a->b) -> [a] -> [b]
-- map _ [] = []
-- map f (x:xs) = (f x):map f xs`


-- filter
-- recibe una propiedad(Fincion que devuelve valor booleano)
-- Recibe: (a -> Bool)
-- Recibe: [a]
-- Devuelve: [a]

filter :: (a → Bool ) → [a ] → [a ]
filter _ [] = []
filter p ( x: xs )
    | p x = x :( filter p xs )
    | otherwise = filter p xs

