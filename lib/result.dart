import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

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
    return Center(
      child: Text(
        resultMessage,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
