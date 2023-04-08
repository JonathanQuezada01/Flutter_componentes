import 'package:componentes/themes/app_themes.dart';
import 'package:flutter/material.dart';

import 'routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material app',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes
            .onGenerateRoute, //Se debe de poner el nombre de la función creada en la ruta 404}
        theme: AppTheme.lightTeme);
  }
}
