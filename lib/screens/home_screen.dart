import 'package:flutter/material.dart';
import 'package:componentes/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final MenuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('componentes de flutter'),
        ),
        body: ListView.separated(
            itemCount: AppRoutes.menuOptions.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(MenuOptions[index].name),
                trailing: Icon(MenuOptions[index].icon),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const ListView2Screen());
                  // Navigator.pushReplacement(context, route);

                  Navigator.pushNamed(
                      context,
                      MenuOptions[index]
                          .route); //Para esta navegación se usa el nombre asignado a la ruta
                },
              );
            }));
  }
}
