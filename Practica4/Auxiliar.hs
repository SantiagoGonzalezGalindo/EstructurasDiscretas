{-
 * Nombre:      Auxiliar.hs
 * Autor:       Santiago Gonzalez Galindo
 * Descripción: Tipos Natural y Entero y funciones auxiliares de la práctica 4.
 * Fecha:       29/10/2026
-}

module Auxiliar where

{-
    Tipo : Natural
    Descripcion: Es el tipo de dato de los numeros naturales. Cero es el 0 y S n es el sucesor de n, o sea n + 1. Va en este modulo porque las funciones auxiliares lo necesitan y Haskell no deja que dos archivos se importen entre si.
    Uso: Cero , S (S Cero)
-}

data Natural = Cero | S Natural deriving (Eq, Show)

{-
    Tipo : Entero
    Descripcion: Es el tipo de dato de los numeros enteros. Zero es el 0, Succ n es el sucesor de n y Neg n es el negativo de n. Va en este modulo por la misma razon que Natural.
    Uso: Zero , Succ (Succ Zero) , Neg (Succ Zero)
-}

data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)

{-
    Funcion : sumaNat
    Descripcion: Recibe dos naturales y regresa su suma. Si el primero es Cero el resultado es el segundo, y si no, se le quita una S al primero y se le pone afuera al resultado.
    Uso: sumaNat (S Cero) (S (S Cero)) = S (S (S Cero))
-}

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

{-
    Funcion : multiNat
    Descripcion: Recibe dos naturales y regresa su producto. Multiplicar es sumar el segundo numero tantas veces como diga el primero, por eso cada S del primero suma una vez el segundo.
    Uso: multiNat (S (S Cero)) (S (S (S Cero))) = S (S (S (S (S (S Cero)))))
-}

multiNat :: Natural -> Natural -> Natural
multiNat Cero m = Cero
multiNat (S n) m = sumaNat m (multiNat n m)

{-
    Funcion : sumaPositivos
    Descripcion: Recibe dos enteros que sean 0 o positivos y regresa su suma. Funciona igual que sumaNat pero con Zero y Succ. Solo se usa con positivos porque asi la necesita multiEnt.
    Uso: sumaPositivos (Succ Zero) (Succ (Succ Zero)) = Succ (Succ (Succ Zero))
-}

sumaPositivos :: Entero -> Entero -> Entero
sumaPositivos Zero m = m
sumaPositivos (Succ n) m = Succ (sumaPositivos n m)
