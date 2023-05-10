import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();
  List<Message> messages = [
    Message(message: 'Hola', fromWho: FromWho.my),
    Message(message: 'Uwu', fromWho: FromWho.my)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(message: text, fromWho: FromWho.my);
    messages.add(newMessage);
    if (text.endsWith('?')) {
      userReply();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> userReply() async {
    final userMessage = await getYesNoAnswer.getAnswer();
    messages.add(userMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
