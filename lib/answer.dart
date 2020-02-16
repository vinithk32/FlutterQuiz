import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  String answer;
  Function callback;

  Answer({this.answer, this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(answer, style: TextStyle(color: Colors.white),),
        color: Colors.blue,
        onPressed: callback,
      ),
    );
  }
}