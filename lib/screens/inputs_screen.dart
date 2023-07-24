import 'package:componentes/widgets/customImputfield.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<
        FormState>(); //se crea key del formulario para referenciar el formulario

    ///////////////////////////////////////////////////////////
    final Map<String, String> formValues = {
      'null': 'null',
      'first_name': 'Jonathan',
      'last_name': 'Wick',
      'email': 'mrquezad@gmail.com',
      'password': 'Tu madre',
      'role': 'assassin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: myFormKey,
          onChanged: () {},
          //Crea el formulario
          child: Padding(
            //Crea los margenes del formulario
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            //
            child: Column(
              //Realiza la columna del formulario

              ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
              children: [
                //reference start

                CustomInputField(
                  labelText: 'esto es el label',
                  hintText: 'Este es el hintText',
                  helperText: 'Este es el helperText',
                  formProperty: 'null',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                //reference end

                //name camp start
                CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    helperText: 'Campo obligatorio',
                    icon: (Icons.person_add_alt_rounded),
                    suffixIcon: (Icons.person_3_sharp),
                    formProperty: 'first_name',
                    formValues: formValues),
                const SizedBox(
                  height: 20,
                ),
                // name camp end

                //last name camp start
                CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    helperText: 'Campo obligatorio',
                    icon: (Icons.person_add_alt_rounded),
                    suffixIcon: (Icons.person_3_sharp),
                    formProperty: 'last_name',
                    formValues: formValues),
                const SizedBox(height: 20),
                //last name camp end

                //email camp start
                CustomInputField(
                    labelText: 'Email',
                    hintText: 'Email del usuario',
                    helperText: 'Campo obligatorio',
                    icon: (Icons.mail_sharp),
                    suffixIcon: (Icons.mark_email_read),
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues),
                const SizedBox(height: 20),
                //email camp end

                //pass camp start
                CustomInputField(
                    labelText: 'Password',
                    hintText: 'Password del usuario',
                    helperText: 'Campo obligatorio',
                    icon: (Icons.lock),
                    keyboardType: TextInputType.visiblePassword,
                    obscuredText: true,
                    formProperty: 'password',
                    formValues: formValues),
                //pass camp end

                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Normal',
                      child: Text('normal'),
                    ),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context)
                          .requestFocus(FocusNode()); //Elimina el teclado

                      //! Si el formulario esta vació no retorna nada
                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Enviar'),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
