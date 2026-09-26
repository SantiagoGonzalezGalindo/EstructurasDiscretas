{- 
    Funcion : reconversion
    Descripcion: Recibe un numero y realiza una reconversion quitandole tres ceros al valor ingresado.
    Uso: reconversion 10 = 1.0e-2 (El 1.0e-2 es notacion cientifica y significa 1.0 x 10^-2, o sea 0.01)
-} 

reconversion :: Float -> Float
reconversion x = (x / 1000 )
