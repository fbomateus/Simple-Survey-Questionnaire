import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(SurveyQuetionnaireApp());

class _SurveyQuetionnaireAppState extends State<SurveyQuetionnaireApp> {
  var _selectedQuestion = 0;
  final List<Map> _questions = const [
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

  void _answer() {
    if (haveQuestionSelected) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get haveQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String>? answers =
        haveQuestionSelected ? _questions[_selectedQuestion]['answer'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: haveQuestionSelected
            ? Column(
                children: [
                  Question(_questions[_selectedQuestion]['question']),
                  ...answers!.map((a) => Answer(a, _answer)).toList(),
                ],
              )
            : null,
      ),
    );
  }
}

class SurveyQuetionnaireApp extends StatefulWidget {
  _SurveyQuetionnaireAppState createState() {
    return _SurveyQuetionnaireAppState();
  }
}
