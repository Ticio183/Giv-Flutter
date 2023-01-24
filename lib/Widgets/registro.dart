import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import 'login.dart';

class registroUsuario extends StatefulWidget {
  const registroUsuario({super.key});

  @override
  State<registroUsuario> createState() => _registroUsuarioState();
}

class _registroUsuarioState extends State<registroUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff14b9bf),
          title: const Text('Giv', style: TextStyle(fontSize: 30)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Column(
                children: [
                  Text(
                    'Bienvenido a Giv!!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Crea tu cuenta',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(label: Text('Nombre')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(label: Text('Apellido')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration:
                        InputDecoration(label: Text('Tipo de diabetes')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration:
                        InputDecoration(label: Text('Nombre de usuario')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(label: Text('Contraseña')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration:
                        InputDecoration(label: Text('Confirmar contraseña')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => loginUsuario()));
                      },
                      child: Text('Registrarse')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => loginUsuario()));
                      },
                      child: Text('Ya tengo cuenta'))
                ],
              ),
            ),
          ),
        ));
  }
}
