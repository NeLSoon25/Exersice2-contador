//importamos el package para darme materiales y vistas a los elementos
import 'package:flutter/material.dart';

//declaramos una clase llamada Counter que extiende o hereda de la clase StatefulWidget
class Counter extends StatefulWidget {
//sobreescribimos la funcion createState que retorna un valor State de la clase Counter
  @override
  State<Counter> createState() => _CounterState();
}

//Creamos clase que extiende de la clase State del tipo Counter
class _CounterState extends State<Counter> {
  //iterador del contador tipo entero
  int counter = 0;
  //funcion void para mostrar los datos en UI de incremento
  void incrementCounter() {
    //funcion para refrescar el estado de los elementos
    setState(() {
    //dentro las variables que se modifican
      counter++;
    });
  }
//Metodo void para mostrar los datos en UI de decremente
  void decrementCounter() {
    //funcion para refrescar el estado de los elementos
    setState(() {
    //dentro las variables que se modifican
      counter--;
    });
  }

  //Metodo build que regresa un Widget para mostrar en UI
  @override
  Widget build(BuildContext context) {
    //retorna un Scaffold con todos los elementos hijos
    return Scaffold(
      //appBar superior con un texto 'Counter'
      appBar: AppBar(
        title: Text('Counter'),
      ),
      //Al cuerpo de la app se le aplica un center para centrar todos los hijos
      body: Center(
        //elemento hijo de center de tipo columna
        child: Column(
          //alineacion al centro
          mainAxisAlignment: MainAxisAlignment.center,
          //Elementos hijos de column
          children: [
            //elemento de tipo texto
            Text(
              'Counter: $counter',
              //Estilo para agrandar el tamano de fuente
              style: TextStyle(fontSize: 20),
            ),
            //Elemento de tipo Row
            Row(
              //alineacion al centro
              mainAxisAlignment: MainAxisAlignment.center,
              //elementos hijos de Row
              children: [
                //Boton floating 
                FloatingActionButton(
                  //funcion que se ejecuta cuando se da click
                  onPressed: incrementCounter,
                  //tooltip para mostrar en el boton
                  tooltip: 'Increment',
                  //Elemento hijo del button de tipo icono
                  child: Icon(Icons.add),
                ),
                //contenedor con ancho fijo de 10
                SizedBox(width: 10),
                //Elemento FloatingButton
                FloatingActionButton(
                  //funcion que se ejecuta cuando se da click
                  onPressed: decrementCounter,
                  //tooltip para mostrar en el boton
                  tooltip: 'Decrement',
                  //Elemento hijo del button de tipo icono
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//Funcion main
void main() {
  //metodo para renderizar la aplicacion que recibe un metodo Material App con Counter() como parametro de home
  runApp(MaterialApp(
    home: Counter(),
  ));
}
