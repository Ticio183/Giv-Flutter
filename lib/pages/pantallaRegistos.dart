import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Widgets/nuevoRegistro.dart';

class pantallaRegistros extends StatefulWidget {
  const pantallaRegistros({super.key});

  @override
  State<pantallaRegistros> createState() => _pantallaRegistrosState();
}

class _pantallaRegistrosState extends State<pantallaRegistros> {
  void get() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => nuevoRegistro()));
        },
        backgroundColor: Color(0xff14b9bf),
      ),
      body: listadoRegsitros(),
    );
  }

  Widget listadoRegsitros() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Mis registros creados:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text('Aun no hay registros creados'),
          Text('(Por ahora no se pueden crear)'),
        ],
      ),
    );
  }
}
