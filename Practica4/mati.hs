{-
 * Nombre:      mati.hs
 * Autor:       Santiago Gonzalez Galindo
 * Descripción: Tipo Matrioska y sus funciones.
 * Fecha:       29/10/2026
-}

{-
    Tipo : Matrioska
    Descripcion: Es el tipo de dato de las matrioskas. Mati es la muñeca mas chica, que ya no tiene nada adentro, y Cont m es una muñeca que contiene a la matrioska m.
    Uso: Mati , Cont (Cont Mati)
-}

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)
