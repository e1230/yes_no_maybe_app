import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ih1.redbubble.net/image.3127807260.4963/flat,128x128,075,t.jpg'),
          ),
        ),
        title: const Text('Usuario 1'),
        centerTitle: false,
      ),
    );
  }
}
