import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var question = [
      'What is your favorite color?',
      'What is your favorite animal?',
      'What is your favorite song',
    ];
    void _answerQuestion() {
      setState(() {
        if (_questionIndex == 2) {
          _questionIndex = 0;
        }
        _questionIndex = _questionIndex + 1;
      });

      print(_questionIndex);
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: Column(
        children: [
          Question(
            question[_questionIndex],
          ),
          RaisedButton(
            child: const Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: const Text('Answer 2'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: const Text('Answer 3 '),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    ));
  }
}
