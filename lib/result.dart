// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore < 10) {
      resultText = "You are awesome and innocent !";
    } else if (resultScore < 15) {
      resultText = "Pretty likeable";
    } else if (resultScore < 20) {
      resultText = "You are strange";
    } else {
      resultText = "You are terrible";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              "Restart Quiz",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
