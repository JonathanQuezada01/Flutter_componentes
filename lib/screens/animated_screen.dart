import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double? _weight = 50;
  double _height = 50;
  Color _color = const Color.fromARGB(255, 117, 0, 212);
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void cambio() {
    setState(() {
      final random = Random().nextInt(300).toDouble() + 10;
      _weight = _height = random;
      _color = Color.fromRGBO(Random().nextInt(250), Random().nextInt(250),
          Random().nextInt(250), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container '),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 3),
          curve: Curves.bounceInOut,
          width: _weight,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          {
            cambio();
          }
        },
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.black,
        child: const Icon(
          Icons.play_arrow_outlined,
          size: 50,
        ),
      ),
    );
  }
}
