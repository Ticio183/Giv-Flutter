import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget menuLateral() {
  final Uri _patreon = Uri.parse('https://www.patreon.com/user?u=82534234');
  final Uri _instagram = Uri.parse('https://www.instagram.com/giv_app/');
  final Uri _sitio = Uri.parse('https://givweb.github.io/pages/');

  return Drawer(
      child: SingleChildScrollView(
          child: Padding(
    padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
    child: Column(
      children: [
        const Text(
          'Giv',
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
        Card(
          child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const Text(
                    '¿Como ayudarnos?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                      'Giv es una aplicaion gratuita, sin embargo, puede realizar donaciones via Patreon para apoyar nuestro trabajo.'),
                  Row(
                    children: [
                      TextButton(
                        child: const Text('Patreon'),
                        onPressed: () {
                          launchUrl(_patreon);
                        },
                      ),
                    ],
                  )
                ],
              )),
        ),
        Card(
          child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const Text(
                    '¿Contactos?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Giv cuenta con redes sociales para tener un contacto mas cercano con los usuarios para respondes consultas o leer recomendaciones que desee realizar.',
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Redes sociales:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      TextButton(
                        child: const Text('Instagram'),
                        onPressed: () {
                          launchUrl(_instagram);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      TextButton(
                        child: const Text('Sitio web'),
                        onPressed: () {
                          launchUrl(_sitio);
                        },
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ],
    ),
  )));
}
