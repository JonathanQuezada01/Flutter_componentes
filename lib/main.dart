import 'package:componentes/screens/listview2_screen.dart';
import 'package:flutter/material.dart';
// import 'package:componentes/screens/listview1_screen.dart' show ListView1Screen;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      home: ListView2Screen(),
    );
  }
}
