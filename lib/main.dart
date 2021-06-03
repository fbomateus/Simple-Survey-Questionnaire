import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

main() => runApp(SurveyQuetionnaireApp());

class _SurveyQuetionnaireAppState extends State<SurveyQuetionnaireApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;
  final List<Map> _questions = const [
    {
      'question': "What's your favourite colour?",
      'answer': [
        {'answer': 'Black', 'score': 10},
        {'answer': 'Red', 'score': 5},
        {'answer': 'Green', 'score': 3},
        {'answer': 'White', 'score': 1},
      ],
    },
    {
      'question': "What's your favourite animal?",
      'answer': [
        {'answer': 'Rabbit', 'score': 10},
        {'answer': 'Snake', 'score': 5},
        {'answer': 'Elephant', 'score': 3},
        {'answer': 'Leon', 'score': 1},
      ],
    },
    {
      'question': "What's your favourite game?",
      'answer': [
        {'answer': 'Counter-Strike', 'score': 10},
        {'answer': 'Minecraft', 'score': 5},
        {'answer': 'Call of Duty', 'score': 3},
        {'answer': 'PUBG', 'score': 1},
      ],
    }
  ];

  void _answer(int score) {
    if (haveQuestionSelected) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }
  }

  bool get haveQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: haveQuestionSelected
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                onAnswer: _answer,
              )
            : Result(_totalScore),
      ),
    );
  }
}

class SurveyQuetionnaireApp extends StatefulWidget {
  _SurveyQuetionnaireAppState createState() {
    return _SurveyQuetionnaireAppState();
  }
}
