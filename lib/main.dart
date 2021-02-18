import 'package:flutter/material.dart';
import 'package:section_2/quiz.dart';
import 'package:section_2/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _questionsAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    print('option chosen');
  }

  void _resetApp() {
    setState(() {
      _questionIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your fav color?",
        "answers": ['Black', 'Grey', 'Blue', 'Purple', 'Others........'],
      },
      {
        "questionText": "What's your fav Movie?",
        "answers": [
          'Inception',
          'The Town',
          'Shutter Island',
          'God Father',
          'Others........'
        ],
      },
      {
        "questionText": "What's your fav show?",
        "answers": [
          'Breaking Bad',
          'GOT',
          'DARK',
          'Prison Break',
          'Others........'
        ],
      },
      {
        "questionText": "What's your fav sit-com?",
        "answers": [
          'The Office',
          'Big Bang Theory',
          'HIMYM',
          'Brooklyn 99',
          'Others.........'
        ],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My Firts App"),
              backgroundColor: Colors.blueAccent,
            ),
            body: _questionIndex < questions.length
                ? Quiz(questions, _questionsAnswer, _questionIndex)
                : Result(
                    _resetApp,
                  )));
  }
}
