import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      "question": "Select clothes",
      "answers": [
        "Sweater",
        "Jacket",
        "T-shirt",
      ],
    },
    {
      "question": "Select pants",
      "answers": [
        "Levis 501",
        "Classy pants",
        "Shorts",
      ],
    },
    {
      "question": "Select shoes",
      "answers": [
        "Classy shoes",
        "Nike Air Force",
        "Flip flops",
      ]
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex += 1;
      } else {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab2",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Laboratoriska vezba 2"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(0),
              ),
              Question(questions[_questionIndex]['question'].toString()),
              ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
                return Answer(
                  _answerQuestion,
                  answer,
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
