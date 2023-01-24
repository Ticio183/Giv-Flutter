import 'package:flutter/material.dart';
import 'package:flutter_giv/pages/pantallaRegistos.dart';

class nuevoRegistro extends StatefulWidget {
  const nuevoRegistro({super.key});

  @override
  State<nuevoRegistro> createState() => _nuevoRegistroState();
}

class _nuevoRegistroState extends State<nuevoRegistro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nuevo registro diario',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        backgroundColor: Color(0xff14b9bf),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            Card(
              elevation: 18,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: Column(
                  children: [
                    Text(
                      'Desayuno',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Antes',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('Glucosa')),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Despues',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('Glucosa')),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 18,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: Column(
                  children: [
                    Text(
                      'Almuerzo',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Antes',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('Glucosa')),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Despues',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('Glucosa')),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 18,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: Column(
                  children: [
                    Text(
                      'Cena',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Antes',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('Glucosa')),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Despues',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('Glucosa')),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context) => pantallaRegistros()));
                },
                child: Text('Cancelar')),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context) => pantallaRegistros()));
                },
                child: Text('Finalizado')),
          ]),
        ),
      )),
    );
  }
}
