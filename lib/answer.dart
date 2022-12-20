import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _choiceText;
  final VoidCallback _callBack;
  Answer(this._callBack, this._choiceText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
          onPrimary: Colors.red,
          textStyle: TextStyle(fontSize: 18),
        ),
        child: Text(this._choiceText),
        onPressed: this._callBack,
      ),
    );
  }
}
