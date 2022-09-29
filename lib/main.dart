import 'package:flutter/material.dart';
import 'package:my_proper_expansiontile/my_proper_ExpansionTile.dart';
import 'package:my_proper_expansiontile/my_proper_border_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool visible_expansion = false;
  double tamanio_nontap = 80;
  double tamanio_current = 80;
  double tamanio_ontap = 200;

  double tamanio_ancho = double.infinity;
  Color color_non_visible = Colors.transparent;
  Color color_ = Colors.amber;
  Cambiar_Container() {
    if (visible_expansion == false) {
      tamanio_current = tamanio_ontap;
      visible_expansion = !visible_expansion;
      color_ = color_non_visible;
    } else {
      visible_expansion = !visible_expansion;
      color_ = Colors.amber;
      tamanio_current = tamanio_nontap;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(children: [
          MyProperExpansionTile(
            color: Colors.amber,
            title: 'Animales',
            sub_title: const [
              Text(
                'Perros',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Gatos',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Peces',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
            ],
          ),
          MyProperExpansionTile(
            color: Colors.cyan,
            title: 'Personas',
            sub_title: const [
              Text(
                'Alfredo',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Martin',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Leonel',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Celina',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Lulu',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Sofia',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
            ],
          ),
          MyProperExpansionTile(
            color: Colors.purple,
            title: 'Planetas',
            sub_title: const [
              Text(
                'Tierra',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Marte',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Saturno',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              )
            ],
          ),
          MyProperExpansionTile(
            color: Colors.teal,
            title: 'Estados',
            sub_title: const [
              Text(
                'Solido',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Liquido',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Gaseoso',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
            ],
          ),
          MyProperExpansionTile(
            color: Colors.lime,
            title: 'Galaxias',
            sub_title: const [
              Text(
                'Andromeda ll',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'Arp 299',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
              Text(
                'BL Lacertae',
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
