import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(SurveyQuetionnaireApp());

class _SurveyQuetionnaireAppState extends State<SurveyQuetionnaireApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      "What's your favourite colour?",
      "What's your favourite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]),
            Answer('Answer 01', _answer),
            Answer('Answer 02', _answer),
            Answer('Answer 03', _answer),
          ],
        ),
      ),
    );
  }
}

class SurveyQuetionnaireApp extends StatefulWidget {
  _SurveyQuetionnaireAppState createState() {
    return _SurveyQuetionnaireAppState();
  }
}
