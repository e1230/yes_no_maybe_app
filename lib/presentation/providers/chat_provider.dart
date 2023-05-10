import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(message: 'Hola', fromWho: FromWho.my),
    Message(message: 'Uwu', fromWho: FromWho.my)
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(message: text, fromWho: FromWho.my);
    messages.add(newMessage);

    notifyListeners();
  }
}
