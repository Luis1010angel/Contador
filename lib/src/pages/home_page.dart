import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estiloTexto = new TextStyle(fontSize: 32);

  int contador = 0;


  @override
  Widget build(BuildContext context) {
    /*return Scaffold(

      appBar:  AppBar(
        title: Text('hola grupo del 15701'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Este es el mensaje de el cuerpo'),
      ),

    );*/

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('titulo'), centerTitle: true),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Clicks', style: estiloTexto),
            Text('$contador', style: estiloTexto),
          ],
        )),
        
        floatingActionButton:_botones()));
  }

Widget _botones(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox(width:30),
      FloatingActionButton(
        child: Icon(Icons.exposure_zero), onPressed: _inicio),
      Expanded(child: SizedBox()),
      FloatingActionButton(
        child: Icon(Icons.remove), onPressed: _resta),
         SizedBox(width:5.0),
         FloatingActionButton(
        child: Icon(Icons.add), onPressed: _suma),
    ]
  );
}

void _resta(){
  setState(() => contador--);
}

void _suma(){
  setState(() => contador++);
}

void _inicio(){
  setState(() => contador=0);
}

}