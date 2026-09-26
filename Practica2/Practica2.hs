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

{-
    Funcion: minutos_horas
    Descripcion: Recibe  minutos y devuelve su conversion en horas.
    Uso: minutos_horas 112 = 1 hora y 52 minutos (Se usan div, show y ++ aunque no aparecen en la lista de operaciones permitidas, porque sin ellas no se puede obtener el cociente entero ni devolver el resultado como texto como en el ejemplo.)
-} 

minutos_horas :: Int -> String
minutos_horas x = show (x `div` 60) ++ (if (x `div` 60) == 1 then " hora " else " horas ") ++ "y " ++ show (x `mod` 60)  ++ (if (x `mod` 60) == 1 then " minuto" else " minutos")
{-
    Funcion: esDescendente
    Descripcion: Se reciben 4 parametros y la funcion devuelve un valor de tipo Booleano dependiendo de si los numeros ingresados fueron de manera descendente o si no fueron de manera descendente
    Uso: esDescendente 10 9 8 7 = True , esDescendente 10 9 8 9 = False (Aunque no esta en la lista, use && para encadenar la comparacion del mayor que, y asi todo quedara dentro de un if, la comparacion del mayor que es estricta, si dos numeros son iguales entonces entregara "False")
    -} 

esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = 
        if x > y && y > z && z > w
          then True
          else False

{-
    Funcion : imc
    Descripcion: Calcula el indice de masa corporal (peso entre estatura al cuadrado) y devuelve su clasificacion segun la OMS: bajo, normal, sobrepeso u obesidad. La estatura puede darse en metros o en centimetros: si el numero es mayor que 3 se toma como centimetros y se convierte a metros (se usan where y && aunque no estan en la lista de operaciones permitidas para unir las dos comparaciones y agregarle un rango, y where para agregar la variable llamada valor y metros a las operaciones correspondientes)
    Uso: imc 53.5 161 = "normal" , imc 53.5 1.61 = "normal"
-} 

imc :: Float -> Float -> String
imc x b = if valor < 18.5
            then "bajo"
                else if valor >= 18.5 && valor < 25
                   then "normal"
                    else if valor >= 25 && valor < 30
                          then "sobrepeso"
                            else "obesidad"
                                where
                                metros = if b > 3 then b / 100 else b
                                valor  = x / (metros * metros)


{- 
    Funcion: hipotenusa
    Descripcion: Recibe dos parametros de tipo flotante donde "x" representa la base y "y" la altura. Devuelve un valor de tipo flotante que represente el valor de la hipotenusa que se calcula respecto a la base y altura del triangulo rectangulo.
    Uso: hipotenusa 9.0 12.0 = 15.0
-} 

hipotenusa :: Float -> Float -> Float
hipotenusa x y = sqrt(x^2+ y^2)


                                 
    



