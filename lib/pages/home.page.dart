import 'package:calculadora/models/boton.models.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';
import '../widgets/detalle_calculadora.dart';
import '../widgets/filaBotonesCalculadora.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> datosSeleccion = [];
  List<String> revertirSeleccion = [];
  String numero = "";
  String operacion = "";
  String resultadoOperacion = "";
  String operacionCompleta = "";
  String mensaje = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(57, 107, 107, 107),
                  border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Expanded(
                      flex: 7,
                      child: Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: detalle(revertirSeleccion),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(57, 107, 107, 107),
                  border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            operacionCompleta,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            numero,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          mensaje,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: const Color.fromARGB(230, 54, 53, 53),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  filaBotonesCalculadora([
                    BotonModel(
                        icon: "",
                        titulo: "7",
                        metodo: () {
                          setState(() {
                            numero += "7";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "8",
                        metodo: () {
                          setState(() {
                            numero += "8";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "9",
                        metodo: () {
                          setState(() {
                            numero += "9";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "÷",
                        metodo: () {
                          setState(() {
                            operacion = "/";
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "DEL",
                        metodo: () {
                          setState(() {
                            try {
                              if (numero == "") {
                                final pos = operacionCompleta.length - 1;
                                operacionCompleta =
                                    operacionCompleta.substring(0, pos);
                              } else {
                                final pos = numero.length - 1;
                                numero = numero.substring(0, pos);
                              }
                            } on RangeError {
                              mensaje = "NO HA INGRESADO DATOS PARA CALCULAR";
                            }
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "C",
                        metodo: () {
                          setState(() {
                            operacion = "";
                            numero = "";
                            operacionCompleta = "";
                            mensaje = "";
                          });
                        }),
                  ]),
                  filaBotonesCalculadora([
                    BotonModel(
                        icon: "",
                        titulo: "4",
                        metodo: () {
                          setState(() {
                            numero += "4";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "5",
                        metodo: () {
                          setState(() {
                            numero += "5";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "6",
                        metodo: () {
                          setState(() {
                            numero += "6";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "x",
                        metodo: () {
                          setState(() {
                            operacion = "x";
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "(",
                        metodo: () {
                          setState(() {
                            operacion = "(";
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: ")",
                        metodo: () {
                          setState(() {
                            operacion = ")";
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                  ]),
                  filaBotonesCalculadora([
                    BotonModel(
                        icon: "",
                        titulo: "1",
                        metodo: () {
                          setState(() {
                            numero += "1";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "2",
                        metodo: () {
                          setState(() {
                            numero += "2";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "3",
                        metodo: () {
                          setState(() {
                            numero += "3";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "-",
                        metodo: () {
                          setState(() {
                            operacion = "-";
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "x^2",
                        metodo: () {
                          setState(() {
                            operacion = "(2)^(";
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "√",
                        metodo: () {
                          setState(() {
                            operacion = "√(";
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                  ]),
                  filaBotonesCalculadora([
                    BotonModel(
                        icon: "",
                        titulo: "0",
                        metodo: () {
                          setState(() {
                            numero += "0";
                            mensaje = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "%",
                        metodo: () {
                          setState(() {
                            if (numero != "") {
                              double porcentaje = double.parse(numero) / 100;
                              numero = porcentaje.toString();
                              operacionCompleta += numero;
                              numero = "";
                            }
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: ",",
                        metodo: () {
                          setState(() {
                            operacion = ",";
                            numero += operacion;
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "+",
                        metodo: () {
                          setState(() {
                            operacion = "+";
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        icon: "",
                        titulo: "=",
                        metodo: () {
                          setState(() {
                            if (numero != "") {
                              operacionCompleta += numero;
                            }
                            String resultadoOperacion = operacionCompleta
                                .replaceAll("x", "*")
                                .replaceAll("√", "sqrt")
                                .replaceAll(",", ".");
                            try {
                              Parser p = Parser();
                              Expression exp = p.parse(resultadoOperacion);
                              ContextModel cm = ContextModel();
                              double eval =
                                  exp.evaluate(EvaluationType.REAL, cm);
                              resultadoOperacion = eval.toString();
                              resultadoOperacion =
                                  validarInfinito(resultadoOperacion);
                              operacionCompleta += "= $resultadoOperacion";
                              datosSeleccion
                                  .add(operacionCompleta.replaceAll(".", ","));
                              revertirSeleccion =
                                  datosSeleccion.reversed.toList();
                              numero = "";
                              operacion = "";
                              operacionCompleta =
                                  resultadoOperacion.replaceAll(".", ",");
                            } on RangeError catch (e) {
                              mensaje = "Expresion Matematica Erronea";
                              operacionCompleta = "";
                              numero = "";
                              operacion = "";
                            } on FormatException catch (e) {
                              if (e.toString().contains("resultadoOperacion")) {
                                mensaje = e
                                    .toString()
                                    .replaceAll("FormatException:", "");
                              } else {
                                mensaje = "Expresion Matematica Erronea";
                              }
                              operacionCompleta = "";
                              numero = "";
                              operacion = "";
                            }
                          });
                        }),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String validarInfinito(String resultadoOperacion) {
  if (resultadoOperacion == 'Infinity') {
    throw const FormatException(
        "El Resultado de la operación tiende a Infinito");
  }
  return resultadoOperacion;
}
