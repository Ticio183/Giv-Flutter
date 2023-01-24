import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_giv/Widgets/registro.dart';
import '../pages/pantallaPrincipal.dart';

class loginUsuario extends StatefulWidget {
  const loginUsuario({super.key});

  @override
  State<loginUsuario> createState() => _loginUsuarioState();
}

class _loginUsuarioState extends State<loginUsuario> {
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
                    'Inicia tu sesion',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(label: Text('Usuario')),
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
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => registroUsuario()));
                      },
                      child: Text('Registrarse')),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => appGiv()));
                      },
                      child: Text('Iniciar')),
                  OutlinedButton(
                      onPressed: () {}, child: Text('Olvide mi contraseña'))
                ],
              ),
            ),
          ),
        ));
  }
}
