import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((question) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: question['user_answer'].toString() ==
                              question['correct_answer'].toString()
                          ? const Color.fromARGB(255, 169, 214, 251)
                          : const Color.fromARGB(255, 145, 184, 251),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    ((question['question_index'] as int) + 1).toString(),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        question['question'] as String,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                      Text(question['user_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 113, 189, 251))),
                      Text(
                        question['correct_answer'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 192, 191, 191)),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
