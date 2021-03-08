# Práctica 3. Sistema Solar.

En esta práctica hemos recreado un pequeño modelo de nuestro sistema solar. Para facilitar la visualización (al no ser el objetivo de este apartado 
manejar ángulos de cámara ni zooms) solo se han incluido los planetas interiores con sus respectivos satélites y Júpiter. Esta aplicación no tiene ningún tipo de interactividad
porque su propósito es simplemente contemplativo.


## Desarrollo de la Práctica

Para plantear adecuadamente esta tarea decidimos crear un objeto que denominamos *ObjetoAstronomico*. Este objeto constará de los siguientes atributos:    </br>

1. distancia (float) = distancia a la que se encuentra el objeto del astro entorno al que orbita.
1. radio (float) = todos los objetos astronómicos son esféricos, con este atriburo definimos su dimensión.
1. objetosastronomicos (ArrayList<ObjetoAstronomico>) = conjunto de *ObjetoAstronomico* que orbita entorno al *ObjetoAstronomico* en concreto.
1. orientacion (PVector) = posición vectorial en el espacio del objeto astronómico con respecto del objeto al que orbita.
1. traslAng (float) = ángulo de traslación.
1. traslAcc (float) = velocidad a la que varía el ángulo de traslación.
1. rotAng (float) = ángulo de rotación.
1. rotAcc (float) = velocidad a la que varía el ángulo de rotación.
1. esfera (PShape) = objeto 3D que constituye la representación visual del objeto en 3D (una esfera).
1. texto (String) = texto que usamos para mostrar, si se desea, el nombre de un astro en cuestión.  

Este objeto goza de un método *muestra()* que usamos para representarlo en la ventana de visualización. En esta función el objeto es sometido a una serie de *translates* y
*rotates* con los que conseguimos emular los movimientos de rotación y traslación que tienen todos los cuerpos celestes. Además, en *muestra()* hemos implementado un 
comportamiento recursivo, cuando se acabe de representar el *ObjetoAstronomico*, para aprovechar el sistema de referencia nuevo que hemos generado con las funciones, invocamos 
la función muestra() de todos los cuerpos celestes que tenemos almacenados en *objetosastronomicos* (este comportamiento se repetirá hasta que lleguemos a un objeto en torno al
que no orbite nada).  

La posición del astro viene dado por el vector orientación, en principio siempre *(1, 0, 0) x distancia* y para obtener el vector entorno al que se va a producir la traslación
hacemos un producto vectorial con el vector perpendicular unitario *(0, 0, 1)* y así conseguir que el vector se encuentre en el eje y. Todas las posiciones siempre van a ser
relativas al objeto que se orbita.  

Finalmente, a cada objeto astronómico le hemos añadido una textura propia, que se corresponde con la real, y los planetas y el Sol gozan, como añadido, un texto donde
se indica su nombre.
