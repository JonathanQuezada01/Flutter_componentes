import 'package:componentes/styles/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('componentes de flutter'),
          backgroundColor: colorTema,
          elevation: 0,
        ),
        body: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('iiiiiiiiiiiiiiii'),
                trailing: const Icon(Icons.arrow_forward),
                selectedColor: colorTema,
                onTap: () {
                  print('object');
                },
              );
            }));
  }
}
