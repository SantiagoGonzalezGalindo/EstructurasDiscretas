{-
 * Nombre:      Auxiliar.hs
 * Autor:       Santiago Gonzalez Galindo
 * Descripción: Tipos Natural y Entero y funciones auxiliares de la práctica 4.
 * Fecha:       29/10/2026
-}

module Auxiliar where

{-
    Tipo : Natural
    Descripcion: Es el tipo de dato de los numeros naturales. Cero es el 0 y S n es el sucesor de n, o sea n + 1. Va en este modulo porque las funciones auxiliares lo necesitan.
    Uso: Cero , S (S Cero)
-}

data Natural = Cero | S Natural deriving (Eq, Show)

{-
    Funcion : sumaNat
    Descripcion: Recibe dos naturales y regresa su suma. Si el primero es Cero el resultado es el segundo, y si no, se le quita una S al primero y se le pone afuera al resultado.
    Uso: sumaNat (S Cero) (S (S Cero)) = S (S (S Cero))
-}

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)
