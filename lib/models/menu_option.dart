import 'package:flutter/material.dart' show IconData, Widget;

//Opciones de la lista que se encuentra en ListTitle de HomeScreen
class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  //funcion que recibe los argumentos necesarios del constructor  MenuOption
  MenuOption(
      {required this.icon,
      required this.name,
      required this.screen,
      required this.route});
}
