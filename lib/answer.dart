import 'package:flutter/material.dart';
class Answers extends StatelessWidget{
  final VoidCallback StateHandler;
  String answerDisplay;
  Answers(this.StateHandler,this.answerDisplay);
  @override
  Widget build(BuildContext context) {
  return  Container(
    width: double.infinity,
    padding: EdgeInsets.all(3.0),
    margin: EdgeInsets.all(5.0),
    child:ElevatedButton(onPressed:StateHandler ,
    child: Text(answerDisplay,style:
      TextStyle(
        color: Colors.black,
        fontSize: 25.0,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),),
    style:ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
      foregroundColor: MaterialStateProperty.all(Colors.black),
    ))
  );
  }
}