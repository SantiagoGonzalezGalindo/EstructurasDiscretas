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

{-
    Funcion : mayorIgual
    Descripcion: Recibe dos matrioskas y regresa True si la primera es mayor o igual que la segunda. Se van abriendo las dos al mismo tiempo: si la segunda llega a Mati primero o al mismo tiempo, la primera es mayor o igual; si la primera llega a Mati y la segunda todavia tiene muñecas, es menor.
    Uso: mayorIgual Mati Mati = True , mayorIgual (Cont (Cont Mati)) (Cont (Cont (Cont Mati))) = False
-}

mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual m Mati = True
mayorIgual Mati (Cont m) = False
mayorIgual (Cont n) (Cont m) = mayorIgual n m

{-
    Funcion : aplana
    Descripcion: Recibe una matrioska y regresa una lista con todas las matrioskas que la forman, de la mas grande a la mas chica. Se pone la matrioska completa al inicio y despues se aplana lo que tiene adentro, hasta llegar a Mati.
    Uso: aplana Mati = [Mati] , aplana (Cont (Cont Mati)) = [Cont (Cont Mati), Cont Mati, Mati]
-}

aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = Cont m : aplana m
