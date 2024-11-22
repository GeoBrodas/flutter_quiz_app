import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map((question) {
        return Row(
          children: [
            Text(
              ((question['question_index'] as int) + 1).toString(),
            ),
            Column(
              children: [
                Text(question['question'] as String),
                const SizedBox(
                  height: 20,
                ),
                Text(question['user_answer'] as String),
                Text(question['correct_answer'] as String),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}
