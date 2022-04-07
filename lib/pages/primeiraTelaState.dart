import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Button.dart';
import 'package:flutter_application_1/pages/createFlight.dart';
import 'package:flutter_application_1/pages/createFlightState.dart';
import 'package:flutter_application_1/pages/primeiraTela.dart';
import 'package:flutter_application_1/util/screenUtil.dart';

class PrimeiraTelaState extends State<PrimeiraTela> {
  ScreenUtil screen = ScreenUtil.getScreen()!;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    Column(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.flight_land),
          title: Text('TAN'),
        ),
        ListTile(
          leading: Icon(Icons.flight_land),
          title: Text('GOL'),
        ),
        ListTile(
          leading: Icon(Icons.flight_land),
          title: Text('AZUL'),
        ),
        ListTile(
          leading: Icon(Icons.flight_land),
          title: Text('TAN'),
        ),
      ],
    ),
    Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: const <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                  child: Text(
                    'Adicionar',
                    textAlign: TextAlign.right,
                  ),
                  onPressed: null)),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Aeroporto - Brasilia'),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Aeroporto - Palmas'),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Aeroporto - São Paulo'),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Aeroporto - Goiás'),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Aeroporto - Guárulhos'),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Aeroporto - Campinas'),
          ),
        ],
      ),
    ),
    Column(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.flight),
          title: Text('Voo 04'),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text('Voo 02'),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text('Voo 05'),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text('Voo 06'),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text('Voo 06'),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text('Voo 06'),
        ),
        ListTile(
          leading: Icon(Icons.flight),
          title: Text('Voo 06'),
        ),
      ],
    ),
  ];

  registrarDimensoes(BuildContext context) {
    int largura2 = MediaQuery.of(context).size.width ~/ 2;
    ScreenUtil.getScreen()?.addValue("largura/2", largura2);

    int altura2 = MediaQuery.of(context).size.height ~/ 2;
    ScreenUtil.getScreen()?.addValue("altura/2", altura2);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
            margin: const EdgeInsets.all(30),
            child: Column(children: [
              ElevatedButton(
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CreateFlight();
                        }))
                      },
                  child: const Text('Add Aeroporto')),
              Card(child: _widgetOptions[_selectedIndex])
            ])),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          fixedColor: Colors.blue[700],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: "Companhias"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined),
                label: "Aeroportos"),
            BottomNavigationBarItem(icon: Icon(Icons.flight), label: "Voos"),
          ],
          onTap: _onItemTapped,
        ));
  }
}
