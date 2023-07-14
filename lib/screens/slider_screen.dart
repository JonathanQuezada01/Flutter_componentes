import 'package:componentes/themes/app_themes.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('slider'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                divisions: 20,
                min: 50,
                max: 400,
                value: _sliderValue,
                activeColor: AppTheme.primaryColor,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                },
              ),

              Image(
                image: AssetImage(
                    'assets/EMPOWERED_back_cover_art_by_AdamWar.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
              const SizedBox(
                height: 50,
              ),

              //('assets/EMPOWERED_back_cover_art_by_AdamWar.jpg'),
              //fit: BoxFit.contain,
            ],
          ),
        ));
  }
}
