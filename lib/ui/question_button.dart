import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton(
      {super.key, required this.message, required this.onClick});

  final String message;
  final void Function() onClick;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 20),
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple),
      child: Text(message),
    );
  }
}
