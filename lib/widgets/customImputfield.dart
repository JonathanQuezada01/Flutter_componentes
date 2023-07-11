// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscuredText;

  //////////////////////////////////////////
  final formProperty;
  final Map<String, dynamic>
      formValues; //Se crea el mapa de valores del formulario

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscuredText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '', //Valor inicial del campo
      keyboardType: keyboardType,

      obscureText: obscuredText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
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
      decoration: InputDecoration(
          helperText: helperText,
          hintText: hintText,
          labelText: labelText,
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: Icon == null ? null : Icon(icon)),
    );
  }
}
