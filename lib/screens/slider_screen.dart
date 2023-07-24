import 'package:componentes/themes/app_themes.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('slider'),
        ),
        /////////////////////////
        //! el SingleChildScrollview nos sirve para poder contener la imagen en la pantalla

        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                  //! el slider.adaptative para poder adaptar la vista de ios y android

                  divisions: 10,
                  min: 50,
                  max: 200,
                  value: _sliderValue,
                  activeColor: AppTheme.primaryColor, //color de la barrita

                  ////////////////////////////////
                  ///Se le da el valor a la imagen y la renderiza nuevamente

                  onChanged: _sliderEnabled
                      ? (value) {
                          //! lo que se hace es que se verifica el estado del checkbox, si no esta seleccionado se desabilita la barrita
                          _sliderValue = value;

                          setState(() {});
                        }
                      : null), // condición de deshabilitar
              //////////////////////////////////
              SwitchListTile.adaptive(
                title: const Text('Habilitar barra '),
                activeColor: AppTheme.primaryColor,
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value;
                  setState(() {
                    _sliderEnabled = value;
                  });
                },
              ),
              //////////////////////////////////
              SingleChildScrollView(
                //! SingleChildScrollView nos ayuda a que cambie el tamaño de la imagen
                child: Image(
                  image: const AssetImage(
                      'assets/EMPOWERED_back_cover_art_by_AdamWar.jpg'), // imagen obtenida de assets
                  fit: BoxFit.contain,
                  width: _sliderValue, //se le da el valor del slider
                ),
              ),
            ],
          ),
        ));
  }
}
