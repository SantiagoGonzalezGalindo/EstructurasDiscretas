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
