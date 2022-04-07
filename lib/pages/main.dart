import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/primeiraTela.dart';

void main() {
//Executa o App utilizando como padrao o Widget de referencia
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    theme: ThemeData(primaryColor: Colors.deepOrange),
    title: "Primeiro App",
    home: PrimeiraTela(),
  ));
}
