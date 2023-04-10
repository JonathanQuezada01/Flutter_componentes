import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 186, 82, 47);

  static final ThemeData lightTeme = ThemeData.light().copyWith(
      primaryColor: Color.fromARGB(255, 23, 15, 41),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.deepPurple,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic)),
      scaffoldBackgroundColor:
          const Color.fromARGB(255, 205, 41, 207), //color de fondo del tema
      //Color de los colores de los botones
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primaryColor),
      ));
}
