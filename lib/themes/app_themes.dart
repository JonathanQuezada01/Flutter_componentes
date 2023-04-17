import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 255, 0, 0);

  static final ThemeData lightTeme = ThemeData.light().copyWith(
    primaryColor: const Color.fromARGB(255, 90, 59, 162),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.deepPurple,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: primaryColor, fontSize: 15, fontStyle: FontStyle.italic)),
    scaffoldBackgroundColor:
        const Color.fromARGB(255, 197, 197, 197), //color de fondo del tema
    //Color de los colores de los botones
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primaryColor),
    ),
    //Diseño de los floating action buttons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 5,
    ),
    //Tema de los botones elevados
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.primaryColor,
        shape: const StadiumBorder(side: BorderSide(width: 4)),
        elevation: 100,
      ),
    ),
  );
}
