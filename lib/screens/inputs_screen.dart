import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '', //Valor inicial del campo
                autocorrect: true,
                textCapitalization: TextCapitalization.words,
                validator: (value) {
                  if (value == null) {
                    return 'Este campo es requerido';
                  }
                  //  else if (value.isNotEmpty) {
                  //   return icon: Icon(Icons.check_box_icon);
                  // }
                  return value.isEmpty ? 'Debes de poner algo' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    helperText: 'Nombre completo',
                    hintText: 'Nombre del usuario',
                    labelText: 'Coloca tu nombre aquí',
                    suffixIcon: Icon(Icons.person_pin_outlined),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    icon: Icon(Icons.check_circle_outline_rounded)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
