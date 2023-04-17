import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  void displayDialogIos(BuildContext context) {
    //
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Alerta'),
            content: const Center(
              child: Expanded(
                child: Text('contenido de alerta '),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar')),
            ],
          );
        });
  }

  //
  //
  void displayDialogAndroid(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            elevation: 5,
            title: const Text('Aquí es donde se pone el titulo de la alerta'),
            content: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                //propiedad que nos permite mantener el texto dentro del cuadro
                Expanded(
                    child: Text('Aquí es donde se pone el texto de la alerta')),
                SizedBox(
                  height: 10,
                  width: 15,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              //La siguiente funcion esta al revez( la puse para ver lo de cuppetino )
              onPressed: () => Platform.isAndroid
                  ? displayDialogIos(context)
                  : displayDialogAndroid(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text('Mostrar alerta',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: AutofillHints.oneTimeCode,
                        color: Colors.black)),
              ))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close), onPressed: () {}),
    );
  }
}
