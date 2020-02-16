import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import './answer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return App();
  }
}

class App extends State<MyApp>{

  
  int questionNo = 0;

  void nextQuestion(){
    setState(() {
      questionNo+=1;
    });
    print("out");
  }

  void reset(){
    setState(() {
      questionNo = 0;
    });
  }

  Widget build(BuildContext context){
    var questions = ["how are you","how is your work","what about your family"];
    var answers = [["Fine","Not Fine"],["Good", "Bad"],["Awesome","Not Well"]];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Telsel"),
          backgroundColor: Colors.blueAccent,
        ),
        body: questionNo != questions.length ? Column(
          children: [
            Question(question: questions[questionNo],),
            // Text(
            //   "Hii vinith how are you", 
            //   textAlign: TextAlign.end,
            //   textScaleFactor: 2.5,),  
            Answer(answer: answers[questionNo][0], callback: nextQuestion,),
            // RaisedButton(
            //   child: Text("Fine"),
            //   color: Colors.red,
            //   onPressed: nextQuestion,
            // ),
            Answer(answer: answers[questionNo][1], callback: nextQuestion,)
            // RaisedButton(
            //   child: Text("Not Fine"),
            //   color: Colors.green,
            //   onPressed: nextQuestion,
            // )
          ],
        ) : Center(
          widthFactor: double.infinity,
          child : Column( children:
          [
            Text("You did it", style: TextStyle(fontSize: 29),),
            FlatButton(
              child: Text("Reset Quiz"), 
              onPressed: reset,
              ),
          ]
        )
        )
      ),
    );
  }
  
}