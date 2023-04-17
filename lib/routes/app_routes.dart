import 'package:flutter/material.dart';

import 'package:componentes/models/menu_option.dart';
import 'package:componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  //Creación de las rutas de las opciones del menu (argumentos)
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.crisis_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.bookmark_outline_sharp),
    MenuOption(
        route: 'listView1',
        name: 'List View1',
        screen: const ListView1Screen(),
        icon: Icons.format_list_bulleted),
    MenuOption(
        route: 'listView2',
        name: 'List View2',
        screen: const ListView2Screen(),
        icon: Icons.format_list_bulleted),
    MenuOption(
        route: 'Avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.person_outline)
  ];

  //función que envía la lista de rutas
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const ListView1Screen(),
  //   'listView2': (BuildContext context) => const ListView2Screen(),
  // };

  //La famosa ruta 404
  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
