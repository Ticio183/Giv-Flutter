import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class perfilUsuario extends StatefulWidget {
  const perfilUsuario({super.key});

  @override
  State<perfilUsuario> createState() => _perfilUsuarioState();
}

class _perfilUsuarioState extends State<perfilUsuario> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Column(
        children: [
          Text('Cuenta no registrada'),
          Text('(Por ahora no se pueden cargar los datos))')
        ],
      )),
    );
  }
}
