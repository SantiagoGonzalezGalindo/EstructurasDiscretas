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
