import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  // ResultPage({Key? key}) : super(key: key);
  final int resultScore;
  final void Function() resetHandler;

  ResultPage(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 10) {
      resultText = 'Pretty Awesome!';
    } else if (resultScore <= 1) {
      resultText = 'Very Good (Bro)!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.all(24),
            child: ElevatedButton(
                onPressed: resetHandler,
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurpleAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                            side: BorderSide(color: Colors.deepPurpleAccent)))),
                child: const Text(
                  "Restart Quiz",
                  style: TextStyle(fontFamily: "Poppinss"),
                )),
          )
        ],
      ),
    );
  }
}
