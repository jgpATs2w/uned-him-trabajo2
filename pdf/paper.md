---
title:  'Trabajo 1'  
author:
- name: Javier Garcia Parra
  footnote: 50201633Q / jgarcia1285
abstract: |
  Este es el primer trabajo de la asignatura 'Herramientas informáticas para las matemáticas' del 
  grado en matemáticas de la UNED, curso 2019/20.
...

# Introducción

El enunciado del trabajo es el siguiente:  
Se desea estudiar cómo será el aterrizaje de los aviones en un aeropuerto de nuevo diseño,
situado cerca de una colina. La trayectoria del aterrizaje, que tendrá forma sigmoidal como
muestra la Figura 1.1, se iniciará a una altura A [m], el doble de la altura de la colina. Y se
puede describir mediante la siguiente ecuación.  

$$y={{A\,e^ {- {{c\,x}\over{v_{0}}} }}\over{e^ {- {{c\,x}\over{v_{0}}} }+1}}$$

# Métodos

Para la resolución se han empleado las herramientas maxima 5.41 y scilab 6.0.1.

# Resultados
## Apartados a resolver con Maxima
*1.1) Determinar el punto de la trayectoria donde el avión alcanza la mínima inclinación.  
1.2) Analizar el efecto de la velocidad inicial, v , en la trayectoria. Representándola
gráficamente para 4 valores de v pertenece a  [55,220] . Con A 500, c 0.2777 y x pertenece a [5000,5000].  
1.3) Por normativa de seguridad, la inclinación del avión durante la trayectoria no puede ser
inferior a -14 grados. Calcular, si A 500 y c 0.2777, la velocidad inicial v mínima con la
que debe iniciar la maniobra de aterrizaje el avión para cumplir esa condición.  
1.4) Calcular la posición vertical del avión si éste avanzara hacia una pista infinitamente larga.*  
  
  
Para la ejecución del código, arrancar el intérprete de comandos de maxima y ejecutar:
```
load("maxima.mac");
```
Tras un tiempo, que puede alcanzar varios minutos, se alcanzan las soluciones. El propio script 
muestra el apartado de la respuesta en el que se encuentra.  
Cabe mencionar que para el cálculo del punto de la trayectoria, se ha tomado como origen de la maniobra de
descenso el punto en el que el avión ha descendido 10 m (y=490) (siguiendo el mismo criterio del apartado 1.5, en el que 
se considera el contacto con la pista en y = 10.  
Una vez finalizada la ejecución, se debería ver el gráfico pedido en el apartado 1.2. Opcionalmente se puede
visualizar la primera y segunda derivada (empleando la función ```plot_inclinacion()```).  
Para la aproximación de valores de la función se ha probado con los algoritmos de optimización vistos en el curso, pero
finalmente se ha optado por emplear la función ```solve()``` nativa.

## Apartados a resolver con Scilab  
*1.5) Calcular, con A 500, c 0.2777 y v
150 , el valor aproximado de x donde el avión
contacta con la pista, si se sabe que esto ocurre cuando y 10. Y comprobarlo gráficamente.*
Desde Scilab ejecutar el script ``scilab_5.sce``.
La solución debería aparecer en la consola y el gráfico con la comprobación gráfica debería abrirse en una 
nueva ventana.  
*1.6) Una vez que el avión ha contactado con la pista, se inicia la maniobra de frenado. Su
 posición en la pista, x, depende del tiempo, t, y se puede representar mediante la siguiente
 expresión.
 Donde a [m/s 2 ] es la aceleración de frenado, v [m/s] es la velocidad del avión en el instante
 de contactar con la pista y x es la posición de contacto calculada en el apartado anterior.
 Representar gráficamente la posición del avión en la pista en función del tiempo, si a 12,
 para 3 valores de v (50, 75, 100) es decir para tres valores de velocidad inferiores a la
 velocidad que tenía el avión al iniciar la maniobra de aterrizaje.  
 1.7) Calcular, en las tres situaciones del apartado 1.6, el tiempo que necesita el avión para
 frenar completamente (velocidad nula) y la distancia recorrida en la pista.*   
    
    
Desde Scilab ejecutar el script ``scilab_6_7.sce``. Previamente se ha debido ejecutar el script del apartado 1.5, 
parte de cuyos resultados son necesarios aquí.  
La solución debería aparecer en la consola y el gráfico con la comprobación gráfica debería abrirse en una 
nueva ventana.
