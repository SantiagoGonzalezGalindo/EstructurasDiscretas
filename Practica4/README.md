La Chivita Recursiva

R: En la canción la chiva no se quiere salir, entonces mandan al burro para que la saque, pero el burro no quiere sacarla y también se mete. Para sacar al burro llaman al ratón, el ratón tampoco quiere y se mete, luego llaman al gato para el ratón, al perro para el gato y al pato para el perro, y así cada vez se repite el mismo problema pero con uno más metido. Es como si hubiera una sola función, "sacar a alguien", que cuando no funciona se vuelve a usar a sí misma con un nuevo personaje para sacar al anterior. Eso es la recursión: para resolver el problema se vuelve a hacer lo mismo con un caso parecido, y cada uno se queda esperando a que el siguiente termine. La cadena se acaba con Plim Plim, que es el que sí logra sacarlos y ya no llama a nadie más, eso sería el caso base. Cuando él actúa, todo se resuelve de regreso en orden hasta llegar a la chiva, que por fin sale. Si nunca llegara alguien que sí lo hiciera, la canción no terminaría, como una recursión sin caso base.


Actividad 8. Comparación de enteros.hs y entero.hs

1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Cómo se manejan todos los casos en cada implementación?

R: Los dos archivos definen los enteros de la misma forma: cero, sucesor y negativo solo que en enteros.hs se llaman Cero y Suc y en entero.hs Zero y Succ y los dos tienen una suma y una resta que se llaman entre sí. La diferencia se concentra en cómo resuelven los casos.

En entero.hs los casos base son las identidades con Zero n + 0 = n y n - 0 = n y para restar dos positivos le va quitando un Succ a cada uno hasta que alguno llega a Zero, por lo que si el primero llega antes, el resultado sale negativo solo. No usa if ni compara cuál número es mayor. Al probarlo en ghci la resta falla en varios casos: resta_ent Zero (Neg (Succ Zero)) da Succ (Succ Zero), o sea 2 cuando 0 - (-1) es 1, en resta_ent (Neg (Succ Zero)) (Neg (Succ (Succ Zero))) da Neg (Succ Zero) o sea -1, cuando -1 - (-2) es 1 y resta_ent (Neg (Succ Zero)) (Succ Zero) marca error porque no hay ningún renglón para un negativo menos un positivo. Respecto a la suma sí da bien en todos los casos que probé porque cuando los signos son distintos solo llama a la resta con dos positivos, que es la parte que funciona.

En enteros.hs hay uno para cada combinación de signos: positivo, negativo o cero y cuando el resultado puede ser cero entonces revisa con un if y == si los dos números son iguales. Para restar dos positivos usa mayorEnt para saber cuál es más grande, así casi todos los resultados salen bien pero le faltan los casos de cero con cero: sumaEnt Cero Cero y restaEnt Cero Cero marcan error y mayorEnt también marca error cuando los dos números son iguales debido a que termina llegando a mayorEnt Cero Cero y ese renglón no existe.

