import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 54, 14, 148);

  static final ThemeData lightTeme = ThemeData.light().copyWith(
    primaryColor: Colors.deepPurpleAccent.shade400,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.deepPurple,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic)),
  );

  // final const trailing =
}
