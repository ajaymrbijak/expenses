import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  Result(this.resultScore,this.reset);
  String get resultPhrase{
    String resultText;
    if(resultScore<=8)
      {
        resultText="Your are Calm And Silent Person";
      }
    else if(resultScore<=12)
      {
        resultText="Your are the Likeable and Enjoying Person";
      }
    else if(resultScore<=16) {
      resultText = "Your are classic Person";
    }
    else {
      resultText="Your are Ura Mas Person";
    }
    return resultText;
      }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top:600),
          padding:EdgeInsets.only(bottom:10),
          child:
        Center(
          child:Text(resultPhrase,
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 30.0,
            )
        ),
        ),
        ),
        TextButton(onPressed: reset, child: Text("ReStart Quiz"))
      ],
    );
  }
}
