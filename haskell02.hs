-- Prática 02 de Haskell
-- Nome: Ivan Maidana da Silveira
--1

temFebre :: Float -> Bool
temFebre temp = 37.8 <= temp

comFebre :: [Float] -> [Float]
comFebre x = filter temFebre x 

--2
comFebre' :: [Float] -> [Float]
comFebre' = filter(\x -> 37.8 <= x)

--3
itemize :: [String] -> [String]
itemize = map(\x -> "<li>"++ x ++"</ li>")

--4
areA :: Float -> Float -> Bool
areA x y = x < y^2*pi

bigCircles :: Float -> [Float] -> [Float]
bigCircles x lis = filter (areA x) lis

--5
temFebre' :: (String,Float) -> Bool
temFebre' temp = 37.8 <= snd temp

quarentena :: [(String,Float)] -> [(String,Float)]
quarentena (tupla) = filter temFebre' tupla

--6
idade :: Int -> Int -> Int
idade x list = x-list

idadesEm :: [Int] -> Int -> [Int]
idadesEm = (\list x -> map (idade x) list)

--7
qualLetra :: String -> String
qualLetra str = if (head str == 'A') then "Super"++str  else str

changeNames :: [String] -> [String]
changeNames list = map qualLetra list

--8
onlyShorts :: [String] -> [String]
onlyShorts = filter(\list -> 5 > length list) 