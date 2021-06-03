import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final int selectedQuestion;
  final void Function() onAnswer;

  Quiz({
    required this.questions,
    required this.selectedQuestion,
    required this.onAnswer,
  });

  bool get haveQuestionSelected {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String>? answers =
        haveQuestionSelected ? questions[selectedQuestion]['answer'] : null;

    return Column(
      children: [
        Question(questions[selectedQuestion]['question']),
        ...answers!.map((a) => Answer(a, onAnswer)).toList(),
      ],
    );
  }
}
