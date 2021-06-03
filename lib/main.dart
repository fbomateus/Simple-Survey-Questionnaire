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
    final List<Map> questions = [
      {
        'question': "What's your favourite colour?",
        'answer': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'question': "What's your favourite animal?",
        'answer': ['Rabbit', 'Snake', 'Elephant', 'Leon'],
      },
      {
        'question': "What's your favourite game?",
        'answer': ['Counter-Strike', 'Minecraft', 'Call of Duty', 'PUBG'],
      }
    ];

    List<String> answers = questions[_selectedQuestion]['answer'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]['question']),
            ...answers.map((a) => Answer(a, _answer)).toList(),
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
