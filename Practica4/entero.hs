{-
 * Nombre:      entero.hs
 * Autor:       Santiago Gonzalez Galindo
 * Descripción: Multiplicación de números enteros.
 * Fecha:       29/10/2026
-}

import Auxiliar

{-
    Funcion : multiEnt
    Descripcion: Recibe dos enteros y regresa su producto. Si alguno es Zero el resultado es Zero. Con los signos se usa la ley de los signos: dos Neg dan positivo y un solo Neg da negativo. Ya con los dos positivos, cada Succ del primero suma una vez el segundo con sumaPositivos del modulo Auxiliar.
    Uso: multiEnt (Neg (Succ (Succ (Succ (Succ Zero))))) (Succ (Succ Zero)) = Neg (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))
-}

multiEnt :: Entero -> Entero -> Entero
multiEnt Zero m = Zero
multiEnt n Zero = Zero
multiEnt (Neg n) (Neg m) = multiEnt n m
multiEnt (Neg n) m = Neg (multiEnt n m)
multiEnt n (Neg m) = Neg (multiEnt n m)
multiEnt (Succ n) m = sumaPositivos m (multiEnt n m)
