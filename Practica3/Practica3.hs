import EsParBit

{-
    Tipo : Plazo
    Descripcion: Es el tipo de dato para el plazo de la inversion, puede ser en dias o en meses.
    Uso: Dias 28 , Meses 1
-}

data Plazo = Dias Int | Meses Int

{-
    Funcion : cetes
    Descripcion: Recibe el monto inicial y el plazo y devuelve el monto final con VF = VI * (1 + i * t / 360). Como solo hay 3 plazos: 28, 182 y 364 dias o 1, 6 y 12 meses con un if reviso cual es para usar su tasa, si no es ninguno regresa el mismo monto.
    Uso: cetes 100 (Dias 28) = 100.47366 , cetes 100 (Meses 1) = 100.47366
-}

cetes :: Float -> Plazo -> Float
cetes vi (Dias d) = if d == 28
                      then vi * (1 + 0.0609 * 28 / 360)
                      else if d == 182
                        then vi * (1 + 0.0691 * 182 / 360)
                        else if d == 364
                          then vi * (1 + 0.0744 * 364 / 360)
                          else vi
cetes vi (Meses m) = if m == 1
                       then vi * (1 + 0.0609 * 28 / 360)
                       else if m == 6
                         then vi * (1 + 0.0691 * 182 / 360)
                         else if m == 12
                           then vi * (1 + 0.0744 * 364 / 360)
                           else vi

{-
    Funcion : mensajeCetes
    Descripcion: Recibe el monto inicial y el plazo y regresa un mensaje con el plazo, lo que se gano, es decir, el rendimiento y el monto total. Nota: Se usan show y ++ aunque no estan en la lista, porque sin ellas no se puede poner el numero dentro del texto
    Uso: mensajeCetes 100 (Dias 28) = "Despues de 28 dias, obtuve 0.47366333 de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de 100.47366." , mensajeCetes 100 (Meses 1) = "Despues de 1 mes, obtuve 0.47366333 de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de 100.47366."
-}

mensajeCetes :: Float -> Plazo -> String
mensajeCetes vi (Dias d) = "Despues de " ++ show d ++ " dias, obtuve " ++ show (cetes vi (Dias d) - vi) ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++ show (cetes vi (Dias d)) ++ "."
mensajeCetes vi (Meses m) = "Despues de " ++ show m ++ (if m == 1 then " mes" else " meses") ++ ", obtuve " ++ show (cetes vi (Meses m) - vi) ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++ show (cetes vi (Meses m)) ++ "."

{-
    Funcion : negativos
    Descripcion: Recibe una lista de numeros y cuenta cuantos son negativos. Con la lista por comprension se quedan solo los que son menores que 0 y con length se cuentan.
    Uso: negativos [-1, 2, 4, 6, -4] = 2
-}

negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]

{-
    Funcion : soloPares
    Descripcion: Recibe una lista de numeros y regresa solo los que son pares, para eso usa la funcion esParBit del modulo EsParBit.
    Uso: soloPares [1,2,3,4] = [2,4]
-}

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBit x]
