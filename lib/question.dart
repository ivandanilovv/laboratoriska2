import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      child: Text(
        _questionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30, color: Colors.blue),
      ),
    );
  }
}
