# Mesa DJ

Proyecto de Herramientas Multimedia
Realizar una mesa de DJ	
Integrantes
Santiago Florián Bustamante
Laura Velásquez
El siguiente proyecto es con el fin de usar algunas de las herramientas vistas en clase, y realizar una mesa de Dj para realizar una mezcla de canciones en vivo.

Las herramientas usadas son:
-	Processing: Usada para mostrar al público las acciones que realiza un DJ a la hora de realizar un set de mezclas de canciones en vivo y a hace uso de la librería racTIVision y envía los datos capturados a PureData por mediante el protocolo UDP. (https://processing.org/)
-	racTIVision: Para la captura de los movimientos del DJ y e integrarlos a las funciones que se realizan durante una presentación en vivo. (http://reactivision.sourceforge.net/)
-	PureData: Herramienta de programación visual, con la cual se realiza el tratamiento de sonido a las canciones que va eligiendo el DJ. (https://puredata.info/)
Las acciones que puede realizar un DJ son:
-	Reproducir/Detener una canción
-	Control del volumen
-	Control del tiempo de reproducción de la canción
-	Scratch

Alcance:
-	Reproducir/Detener una canción
-	Control del volumen

Aunque se desarrollaron las funciones para el tratamiento de sonido en PureData, al intentar ejecutar más de una acción a la vez están se interferían entre si durante la reproducción del sonio. La solución estaría en buscar una estructura de datos alternativa al estilo de POO (Programación Orientada a Objetos)
