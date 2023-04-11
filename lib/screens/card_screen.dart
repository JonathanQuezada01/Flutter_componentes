import 'package:flutter/material.dart';

import '../widgets/app_widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tarjetas ')),

        ///
        ///
        ///
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          children: const [
            CustomCardType1(),
            SizedBox(height: 5), //espacio bajo la tarjeta
            CustomCardType2(
              imageName: 'Que buen culo ',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEh5nBynFl-UaruEtNgMXMZMlJPion1uTPEA&usqp=CAU',
            ),
            SizedBox(height: 5),
            CustomCardType2(
              imageUrl:
                  'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/513vvwBzJfS.jpg',
            ),
            SizedBox(height: 5),
            CustomCardType2(
              imageUrl:
                  'https://www.rollingstone.com/wp-content/uploads/2019/07/bathwatergamer.jpg',
            ),
            SizedBox(height: 5),
            CustomCardType2(
              imageUrl:
                  'https://i.kym-cdn.com/entries/icons/original/000/040/215/belledelphinereturn.jpg',
            ),
            SizedBox(height: 30),
          ],
        ));
  }
}
