
import 'package:flutter/material.dart';

class Question extends StatelessWidget{

  String question;
  Question({this.question});

  Question.all(String ques) : this.question = ques;

  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
      question, 
      textAlign: TextAlign.center,
      style: TextStyle(
      color: Colors.black, 
      fontFamily: "Times New Roman",
      fontSize: 28,
      ),
      )
    );
  }
}