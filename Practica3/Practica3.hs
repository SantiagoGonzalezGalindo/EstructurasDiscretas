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
