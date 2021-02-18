import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  int questionIndex;
  final questionsAnswer;

  Quiz(this.questions, this.questionsAnswer, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<String>).map((answer) {
          return Answers(questionsAnswer, answer);
        }).toList()
      ],
    );
  }
}
