import 'package:flutter/material.dart';

import '../themes/app_themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.add_to_photos_sharp,
              color: AppTheme.primaryColor,
            ),
            title: Text('Tarjetas'),
            subtitle: Text(
                'Qui adipisicing nostrud mollit aliquip ut amet irure.Voluptate voluptate velit ut irure veniam nulla nisi fugiat proident ea. Sint voluptate duis anim ullamco pariatur duis elit exercitation consequat. Enim non commodo pariatur commodo in irure nisi labore dolore. Ut voluptate qui adipisicing nisi reprehenderit pariatur do qui officia ipsum ullamco et duis. Adipisicing exercitation mollit exercitation sunt sit. Duis magna non elit cupidatat dolore sit est amet id Lorem pariatur.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
