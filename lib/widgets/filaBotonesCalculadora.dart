import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import '../models/boton.models.dart';

Widget filaBotonesCalculadora(List<BotonModel> lista) {
  List<Widget> listaBotonoes = [];
  lista.forEach((Element) {
    listaBotonoes.add(
        ElevatedButton(onPressed: Element.metodo, child: Text(Element.titulo)));
  });

  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: listaBotonoes);
}
