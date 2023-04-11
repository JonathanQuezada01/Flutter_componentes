import 'package:componentes/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key, required this.imageUrl, this.imageName});
  final String imageUrl;
  final String? imageName;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 0,
      shadowColor: AppTheme.primaryColor.withOpacity(.3),
      child: Column(
        children: [
          const SizedBox(
            width: 20,
          ),
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/download.png'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(
                seconds: 1), //Tiempo que tarda la imagen en hacerse visible
          ),
          if (imageName != null)
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              padding: const EdgeInsets.only(right: 20, bottom: 10),
              color: Colors.amber,
              child: const Text('Que tipa tan rara'),
            ),
        ],
      ),
    );
  }
}
