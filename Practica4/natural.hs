{-
 * Nombre:      natural.hs
 * Autor:       Santiago Gonzalez Galindo
 * Descripción: Funciones sobre los números naturales.
 * Fecha:       29/10/2026
-}

import Auxiliar

{-
    Funcion : a_natural
    Descripcion: Recibe un entero (0, 1, 2...) y lo convierte en Natural. El 0 es Cero y cualquier otro numero es S del natural del numero anterior, asi se pone una S por cada vez que se le resta 1. Solo funciona con numeros de 0 en adelante.
    Uso: a_natural 0 = Cero , a_natural 2 = S (S Cero)
-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n - 1))

{-
    Funcion : a_entero
    Descripcion: Recibe un Natural y regresa su valor como entero. Cero vale 0 y cada S vale 1 mas que lo que tiene adentro.
    Uso: a_entero Cero = 0 , a_entero (S (S (S Cero))) = 3
-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n

{-
    Funcion : potenciaNat
    Descripcion: Recibe dos naturales y eleva el primero a la potencia del segundo. Cualquier numero a la Cero es S Cero (o sea 1), y si no, se multiplica la base por la potencia con un exponente menos. Usa multiNat del modulo Auxiliar.
    Uso: potenciaNat (S (S (S Cero))) (S (S Cero)) = S (S (S (S (S (S (S (S (S Cero))))))))
-}

potenciaNat :: Natural -> Natural -> Natural
potenciaNat b Cero = S Cero
potenciaNat b (S e) = multiNat b (potenciaNat b e)

{-
    Funcion : facNat
    Descripcion: Recibe un natural y regresa su factorial. El factorial de Cero es S Cero (o sea 1), y el de cualquier otro es el numero por el factorial del anterior. Usa multiNat del modulo Auxiliar.
    Uso: facNat (S (S (S Cero))) = S (S (S (S (S (S Cero)))))
-}

facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multiNat (S n) (facNat n)
