{- 
    Funcion : reconversion
    Descripcion: Recibe un numero y realiza una reconversion quitandole tres ceros al valor ingresado.
    Uso: reconversion 10 = 1.0e-2 (El 1.0e-2 es notacion cientifica y significa 1.0 x 10^-2, o sea 0.01)
-} 

reconversion :: Float -> Float
reconversion x = (x / 1000 )

{- 
    Funcion : cashback
    Descripcion: Calcula el cashback con el 10% de puntos, es lo mismo que dividir mi monto entre 10. Por lo que la funcion toma el monto y lo divide entre 10
    Uso: cashback 2640 = 264.0
-} 

cashback :: Float -> Float
cashback x = (x / 10)


