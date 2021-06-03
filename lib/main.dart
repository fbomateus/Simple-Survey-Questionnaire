import 'package:flutter/material.dart';

main() => runApp(SurveyQuetionnaireApp());

class SurveyQuetionnaireApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Text('Hello Flutter!!!'),
      ),
    );
  }
}
