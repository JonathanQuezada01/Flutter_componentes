import 'package:flutter/material.dart';

import '../widgets/app_widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tarjetas ')),

        ///
        ///
        ///
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          children: const [CustomCardType1(), CustomCardType2()],
        ));
  }
}
