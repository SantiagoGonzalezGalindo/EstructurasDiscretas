module EsParBit where

import Data.Bits

{-
    Funcion : esParBit
    Descripcion: Recibe un numero y revisa si es par con su ultimo bit, si el ultimo bit es 0 entonces es par. Se usa .&. que viene de Data.Bits aunque no esta en la lista porque asi la vimos en clase
    Uso: esParBit 4 = True , esParBit 7 = False
-}

esParBit :: Int -> Bool
esParBit n = (n .&. 1) == 0
