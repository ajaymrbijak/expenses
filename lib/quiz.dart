import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestions;
  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestions,
  }
      );
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding:EdgeInsets.only(top:34.0)
      ),
      Question(questions[questionIndex]['questionText'] as String),
      Container(
          padding:EdgeInsets.only(top:34.0)
      ),
      ...(questions[questionIndex]['answerText']as List<Map<String,Object>>).map((answerText){
        return Answers(()=>answerQuestions(answerText['Score']),answerText['text'] as String);
      }).toList(),
      Container(
          padding:EdgeInsets.only(top:34.0)
      ),
      ElevatedButton(
          onPressed: () {
            print("My Button Three");
          },
          child: Text("Answer2")),
    ],);
  }
}
