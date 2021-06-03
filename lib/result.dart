import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() onRestartQuiz;

  Result(this.score, this.onRestartQuiz);

  String get resultMessage {
    if (score < 8) {
      return 'Congratulations!';
    } else if (score < 12) {
      return "You're good!";
    } else if (score < 16) {
      return 'Impressive!';
    } else {
      return 'Jedi level!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultMessage,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          child: Text(
            'Try again',
            style: TextStyle(fontSize: 18),
          ),
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: onRestartQuiz,
        ),
      ],
    );
  }
}
