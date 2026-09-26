{- 
    Funcion : reconversion
    Descripcion: Recibe un numero y realiza una reconversion quitandole tres ceros al valor ingresado.
    Uso: reconversion 10 = 1.0e-2 (El 1.0e-2 es notacion cientifica y significa 1.0 x 10^-2, o sea 0.01)
-} 

reconversion :: Float -> Float
reconversion x = x / 1000

{- 
    Funcion : cashback
    Descripcion: Calcula el cashback con el 10% de puntos, es lo mismo que dividir mi monto entre 10. Por lo que la funcion toma el monto y lo divide entre 10
    Uso: cashback 2640 = 264.0
-} 

cashback :: Float -> Float
cashback x = x / 100

{- 
    Funcion : cashback_monto
    Descripcion: Calcula el cashback en forma de dinero equivalente a la cantidad de puntos. Para calcular el dinero de los puntos acumulados se toma en cuenta el valor por cada punto.
    Uso: cashback_monto 264 0.10 = 26.4 (El "0.10" Puede ser cualquier cantidad por valor de cada punto)
-} 

cashback_monto :: Float -> Float -> Float
cashback_monto x b = x * b

