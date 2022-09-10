import 'package:flutter/material.dart';
import '../models/boton.models.dart';
import '../widgets/filaBotonesCalculadora.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String textResultados = "hola";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Colors.amber,
              child: Row(
                children: [
                  Text("Operaciones"),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.blueAccent,
            child: Row(
              children: [
                Text(textResultados),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.indigo,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Row(children: [(

                  // )],),
                  filaBotonesCalculadora([
                    BotonModel(
                        titulo: "%",
                        metodo: () {
                          print("porcentaje");
                        }),
                    BotonModel(
                        titulo: "CE",
                        metodo: () {
                          print("Eliminar");
                        }),
                    BotonModel(
                        titulo: "C",
                        metodo: () {
                          print("eliminarTodo");
                        }),
                    BotonModel(
                        titulo: "<-",
                        metodo: () {
                          print("menorIgual");
                        }),
                  ]),
                  filaBotonesCalculadora([
                    BotonModel(
                        titulo: "1/x",
                        metodo: () {
                          print("fraccionario");
                        }),
                    BotonModel(
                        titulo: "X2",
                        metodo: () {
                          print("potencia");
                        }),
                    BotonModel(
                        titulo: "√",
                        metodo: () {
                          print("raiz");
                        }),
                    BotonModel(
                        titulo: "/",
                        metodo: () {
                          print("dividir");
                        }),
                  ]),
                  filaBotonesCalculadora([
                    BotonModel(
                        titulo: "7",
                        metodo: () {
                          setState(() {
                            textResultados += "7";
                          });
                        }),
                    BotonModel(
                        titulo: "8",
                        metodo: () {
                          setState(() {
                            textResultados += "8";
                          });
                        }),
                    BotonModel(
                        titulo: "9",
                        metodo: () {
                          setState(() {
                            textResultados += "9";
                          });
                        }),
                    BotonModel(
                        titulo: "x",
                        metodo: () {
                          print("multiplicador");
                        }),
                  ]),
                  filaBotonesCalculadora([
                    BotonModel(
                        titulo: "4",
                        metodo: () {
                          setState(() {
                            textResultados += "4";
                          });
                        }),
                    BotonModel(
                        titulo: "5",
                        metodo: () {
                          setState(() {
                            textResultados += "5";
                          });
                        }),
                    BotonModel(
                        titulo: "6",
                        metodo: () {
                          setState(() {
                            textResultados += "6";
                          });
                        }),
                    BotonModel(
                        titulo: "-",
                        metodo: () {
                          print("menos");
                        }),
                  ]),
                  filaBotonesCalculadora([
                    BotonModel(
                        titulo: "1",
                        metodo: () {
                          setState(() {
                            textResultados += "1";
                          });
                        }),
                    BotonModel(
                        titulo: "2",
                        metodo: () {
                          setState(() {
                            textResultados += "2";
                          });
                        }),
                    BotonModel(
                        titulo: "3",
                        metodo: () {
                          setState(() {
                            textResultados += "3";
                          });
                        }),
                    BotonModel(
                        titulo: "+",
                        metodo: () {
                          print("mas");
                        }),
                  ]),
                  filaBotonesCalculadora([
                    BotonModel(
                        titulo: "+/-",
                        metodo: () {
                          print("masmenos");
                        }),
                    BotonModel(
                        titulo: "0",
                        metodo: () {
                          setState(() {
                            textResultados += "0";
                          });
                        }),
                    BotonModel(
                        titulo: ".",
                        metodo: () {
                          print("punto");
                        }),
                    BotonModel(
                        titulo: "=",
                        metodo: () {
                          print("igual");
                        }),
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
