import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final void Function() onSelect;

  Answer(this.answer, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answer),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        onPressed: onSelect,
      ),
    );
  }
}
