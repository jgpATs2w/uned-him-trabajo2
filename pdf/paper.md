---
title:  'Trabajo 2'  
author:
- name: Javier Garcia Parra
  footnote: 50201633Q / jgarcia1285
abstract: |
  Este es el segundo trabajo de la asignatura 'Herramientas informáticas para las matemáticas' del 
  grado en matemáticas de la UNED, curso 2019/20.
...

# Introducción


# Métodos

Para la resolución se han empleado las herramientas maxima 5.41 y scilab 6.0.1.  
Se ha empleado como base el código facilitado, empleando una única función `procesa` tanto para el cifrado como para el 
descifrado.

# Resultados

2.1)
 
El código emplea un vector de alfabetos de cifrado que representan las permutaciones asociadas a cada
módulo base 3 (0, 1, 2). 
Para realizar el cifrado recorre la cadena, caracter a caracter y va aplicando la permutación correspondiente
según el módulo base 3 de la posición del caracter dentro de la cadena.

2.2)
Se incluye el código solicitado en el archivo `ejemplo_cripto_RGB_T2.sce`.  
Desde scilab o scilab-cli, ejecute `exec('ejemplo_cripto_RGB_T2.sce)`

2.3)
En el mismo archivo que el apartado anterior se incluye el cifrado y descifrado requerido.

2.4)
El código en máxima se encuentra en ejemplo_cripto_RGB_T2.mac.
Desde maxima, ejecute `batchload("ejemplo_cripto_RGB_T2.mac");`

2.5)
Se hace uso de la función Matplot. El código se encuentra en `crea_imagen.sce`.  
Desde scilab o scilab-cli, ejecute `exec('ejemplo_cripto_RGB_T2.sce)`
