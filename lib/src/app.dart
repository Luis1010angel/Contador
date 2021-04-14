import 'package:flutter/material.dart';

class MyApp extends StatelessWidget { //Creamos un materialApp que sera la estructura
                                      //de la apñlicacion.
  Widget build(context) { //Creamos un widget, y le crearemos un context
    return MaterialApp(  // MaterialApp para que nos regrese los siguientes datos
      home: Center(      // Crearemos la posicion del texto que pondremos
        child: Text('Hola Mundo del 15701'),// y adentro del center crearemos un
                                            //un elemento hijo, que llevara un text
                                            //que tendra un contenido
      ),
    );
  }
}
// crear una carpeta en lib llamada src, ycreamos un nuevo archivo llamdo app.dart
// 