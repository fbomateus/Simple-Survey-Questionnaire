import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(SurveyQuetionnaireApp());

class _SurveyQuetionnaireAppState extends State<SurveyQuetionnaireApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
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
            ElevatedButton(onPressed: _answer, child: Text('Answer 01')),
            ElevatedButton(onPressed: _answer, child: Text('Answer 02')),
            ElevatedButton(onPressed: _answer, child: Text('Answer 03')),
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
