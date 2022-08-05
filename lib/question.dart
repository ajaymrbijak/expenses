import 'package:flutter/material.dart';
class Question extends StatelessWidget{
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context){
    return Container(
      width:double.infinity,
      margin:EdgeInsets.all(40.0),
      child:Text(question,
        style:TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color:Colors.tealAccent,
        ),
      textAlign: TextAlign.center,
      )
    );
  }
}