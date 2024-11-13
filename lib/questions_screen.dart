import 'package:flutter/material.dart';
import 'package:quiz_app/ui/question_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Text(
          'How many times did Donald Trump win?',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        const SizedBox(height: 20),
        QuestionButton(message: 'Hellow world', onClick: () {}),
        QuestionButton(message: 'Hellow world', onClick: () {}),
        QuestionButton(message: 'Hellow world', onClick: () {}),
        QuestionButton(message: 'Hellow world', onClick: () {}),
      ]),
    );
  }
}
