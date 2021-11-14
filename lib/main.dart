// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, must_be_immutable, use_key_in_widget_constructors

import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What is your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'white', 'score': 5},
        {'text': 'blue', 'score': 8},
        {'text': 'red', 'score': 9},
      ],
    },
    {
      'questionText': 'What is your favorite animal ?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Chat', 'score': 1},
        {'text': 'Dog', 'score': 7},
        {'text': 'Rabbit', 'score': 4},
      ],
    },
    {
      'questionText': 'Who is your favorite instroctor ?',
      'answers': [
        {'text': 'Chris', 'score': 6},
        {'text': 'Janne', 'score': 9},
        {'text': 'Rebecca', 'score': 8},
        {'text': 'Paul', 'score': 5}
      ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    //totalScore += score;

    print(totalScore);
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                questionIndex: questionIndex,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
