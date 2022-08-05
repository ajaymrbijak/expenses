import'package:flutter/material.dart';
import 'package:flutter_1/quiz.dart';
import 'package:flutter_1/result.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {

  final questionList=const[
    {
      "questionText":"Who is your Favourite Heroine ?",
      "answerText":[
        {"text": "KethikaSharma", "Score": 9},
        {"text": "Kajol", "Score": 8},
        {"text": "Pooja Hedge","Score": 9},
        {"text": "Divya Bharthi", "Score": 7},
      ]
    },

    {
      "questionText":"Who is your Favourite Hero ?",
      "answerText":[
        {"text":"Prabhas","Score":10},
        {"text":"Prabhu dev","Score":9},
        {"text":"Allu Arjun","Score":8},
        {"text":"N.T.R","Score":8},
        {"text": "Ram Charan","Score":7},
        {"text":"VJ","Score":10},

      ]
    },
    {
      "questionText": "What's Your Favorite color ?",
      "answerText": [
        {"text": "Black", "Score": 7},
        {"text": "Green", "Score": 8},
        {"text": "White", "Score": 9},
        {"text": "Pink", "Score": 8},
        {"text": "Red", "Score": 6}
      ]
    },
    {
      "questionText": "What's Your Favorite food ?",
      "answerText": [
        {"text": "Biryani", "Score": 8},
        {"text": "Pannier masala", "Score": 9},
        {"text": "Tandoori", "Score": 7},
        {"text": "Desert", "Score": 6},
      ]
    },
    {
      "questionText": "Where you want to go for Bachelor Party ?",
      "answerText": [
        {"text": "Gov", "Score": 10},
        {"text": "Maldives", "Score": 9},
        {"text": "Paris", "Score": 8},
        {"text": "USA", "Score": 9},
        {"text": "Canada", "Score": 10}
      ]
    },
    {
      "questionText": "What's Your Favorite team in ipl ?",
      "answerText": [
        {"text": "Rcb", "Score": 10},
        {"text": "Csk", "Score": 9},
        {"text": "RR", "Score": 8},
        {"text": "Lsg", "Score": 9},
        {"text": "Gt", "Score": 10}
      ]
    }
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz()
  {
    setState((){
        questionIndex=0;
        totalScore=0;
    });
  }
  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    // print(questionList[questionIndex]);
    if (questionIndex < questionList.length) {
      print("We have more question to apply");
    } else {
      print("No More Questions");
    }
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exos Launch",
      home: Scaffold(
          appBar: AppBar(title: Text("Exos",
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.normal,
                color:Colors.pinkAccent,
              )
          ),
          ),
          body: questionIndex<questionList.length ?
          Quiz(questions: questionList, questionIndex: questionIndex, answerQuestions: answerQuestion)
              :
          Result(totalScore,resetQuiz)
      ),
    );
  }
}