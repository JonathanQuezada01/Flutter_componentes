import 'package:componentes/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 10,
      shadowColor: AppTheme.primaryColor.withOpacity(.5),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
            width: 20,
          ),
          const FadeInImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEh5nBynFl-UaruEtNgMXMZMlJPion1uTPEA&usqp=CAU'),
            placeholder: AssetImage('assets/download.png'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(
                seconds: 1), //Tiempo que tarda la imagen en hacerse visible
          ),
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('que buen culo'),
          ),
        ],
      ),
    );
  }
}
