import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_giv/pages/pantallaInicio.dart';
import 'package:flutter_giv/pages/pantallaPerfil.dart';
import 'package:flutter_giv/pages/pantallaRegistos.dart';

import '../Widgets/menuLatera.dart';

class appGiv extends StatefulWidget {
  const appGiv({super.key});

  @override
  State<appGiv> createState() => _appGivState();
}

int _navegadorIndex = 0;
List<Widget> _pantallasApp = [
  pantallaInicio(),
  pantallaRegistros(),
  pantallaPerfil()
];

class _appGivState extends State<appGiv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(),
        appBar: AppBar(
          backgroundColor: const Color(0xff14b9bf),
          title: const Text('Giv', style: TextStyle(fontSize: 30)),
          centerTitle: true,
        ),
        body: _pantallasApp[_navegadorIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (indice) {
              setState(() {
                _navegadorIndex = indice;
              });
            },
            currentIndex: _navegadorIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add), label: 'Nuevo registro'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: 'Mi cuenta')
            ]));
  }
}
