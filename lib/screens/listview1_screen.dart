import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  //Lista de texto que se le ingresara al ListView
  final options = const [
    'Megaman',
    'Metal gear',
    'Super Smash',
    'final fantasy',
  ];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'listView1',
          ),
        ),
        body: ListView(
          //se crea el listView
          children: [
            ...options
                .map((game) //Se desestructura options y se mete en game
                    =>
                    ListTile(
                      title: Text(game), //se pone el game en el texto
                      trailing: const Icon(Icons
                          .arrow_forward), //Se le pone un icono a cada texto de la ListView
                      //Se pone en el lisTile,
                    ))
                .toList(),
          ],
        ));
  }
}
