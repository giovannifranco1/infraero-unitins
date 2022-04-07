import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/createFlight.dart';
import 'package:flutter_application_1/util/screenUtil.dart';

class CreateFlightState extends State<CreateFlight> {
  ScreenUtil screen = ScreenUtil.getScreen()!;

  registrarDimensoes(BuildContext context) {
    int largura2 = MediaQuery.of(context).size.width ~/ 2;
    ScreenUtil.getScreen()?.addValue("largura/2", largura2);

    int altura2 = MediaQuery.of(context).size.height ~/ 2;
    ScreenUtil.getScreen()?.addValue("altura/2", altura2);
  }

  @override
  Widget build(BuildContext context) {
    registrarDimensoes(context);
    int largura = (MediaQuery.of(context).size.width / 2) as int;
    ScreenUtil.getScreen()?.addValue("largura/2", largura);

    return Scaffold(
        appBar: AppBar(
          title: const Text("App voo"),
          backgroundColor: Colors.blue[400],
        ),
        body: Container(
            margin: const EdgeInsets.all(10),
            child: Column(children: const [
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Informe o nome do aeroporto'),
              ),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.location_city_rounded),
                    hintText: 'Informe a Cidade'),
              ),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.location_city),
                    hintText: 'Informe o Estado'),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(onPressed: null, child: Text('Salvar')))
            ])));
  }
}
