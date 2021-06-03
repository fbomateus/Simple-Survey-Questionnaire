import 'package:flutter/material.dart';

main() => runApp(SurveyQuetionnaireApp());

class SurveyQuetionnaireAppState extends State<SurveyQuetionnaireApp> {
  var selectedQuestion = 0;

  void answer() {
    setState(() {
      selectedQuestion++;
    });
    print(selectedQuestion);
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
            Text(questions[selectedQuestion]),
            ElevatedButton(onPressed: answer, child: Text('Answer 01')),
            ElevatedButton(onPressed: answer, child: Text('Answer 02')),
            ElevatedButton(onPressed: answer, child: Text('Answer 03')),
          ],
        ),
      ),
    );
  }
}

class SurveyQuetionnaireApp extends StatefulWidget {
  SurveyQuetionnaireAppState createState() {
    return SurveyQuetionnaireAppState();
  }
}
