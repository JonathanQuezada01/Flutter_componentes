import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String avatar =
        'https://i.ytimg.com/vi/aGUCBorpRz0/maxresdefault.jpg';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.blue.shade500,
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 150,
          backgroundImage: NetworkImage(avatar),
        ),
      ),
    );
  }
}
