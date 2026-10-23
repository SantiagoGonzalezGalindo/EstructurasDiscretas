1. Objetivo de la practica

R: La práctica sirve para aprender a crear mis propios tipos de datos con data y a usar listas por comprensión. Tales como:
- Crear un tipo propio, en este caso: Plazo, que puede ser Dias o Meses.
- Filtrar listas con listas por comprensión.
- Usar una función de otro archivo importando un módulo, en este caso: EsParBit.
- Hacer un tipo nuevo de commits: commits semánticos, que le dan una forma mas detallada a los commits al especificar el tipo de cambio que se esta haciendo en conjunto de los commits atómicos.


Actividad 1. ¿Cuál es la diferencia entre Num e Int?

R: Int es el tipo de los números enteros que tienen un tamaño fijo, como 5 o -3. A diferencia de Int, Num no es un tipo sino una clase de tipo, o sea un grupo de tipos que comparten las mismas operaciones. Todos los tipos que están en Num se pueden sumar, restar y multiplicar y ahí entran Int, Integer, Float y Double. Por lo tanto, Int es uno de los tipos que pertenecen a Num.

Cuando le pregunto a ghci el tipo de (+), me dice que funciona para cualquier tipo a que esté en Num, y cuando le pregunto el tipo de 5 sin decirle nada me dice que es un Num, porque 5 puede ser Int, Float o cualquier otro tipo numérico. Y si le digo que el 5 es Int, ya regresa solamente Int.

![Ejemplo en ghci de Num e Int](ej-num-int.png)


Con :info Num ghci muestra las operaciones de la clase y los tipos que pertenecen a ella, entre ellos Int, Integer, Float y Double.

