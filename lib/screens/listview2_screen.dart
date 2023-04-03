import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  //Lista de texto que se le ingresara al ListView
  final options = const [
    'Megaman',
    'Metal gear',
    'Super Smash',
    'final fantasy',
  ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'listView2',
          ),
        ),
        body: ListView.separated(
            itemCount: options.length,
            separatorBuilder: (context, i) => const Divider(),
            itemBuilder: (
              context,
              i,
            ) {
              return ListTile(
                title: Text(options[i]),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {},
              );
            }));
  }
}
