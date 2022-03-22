import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz_page.dart';
import 'package:quiz_app/result_page.dart';
import 'package:quiz_app/splash_Scrren.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What s your favorite color ?',
      'answer': [
        {'text': 'Red', 'score': 2},
        {'text': 'Pink', 'score': 9},
        {'text': 'Violet', 'score': 2},
        {'text': 'Black', 'score': 8},
      ]
    },
    {
      'questionText': 'What s your favorite animal ?',
      'answer': [
        {'text': 'Tiger', 'score': 4},
        {'text': 'Lion', 'score': 4},
        {'text': 'Dog', 'score': 12},
        {'text': 'Bear', 'score': 8},
      ]
    },
    {
      'questionText': 'What s your favorite Country ?',
      'answer': [
        {'text': 'India', 'score': 4},
        {'text': 'Italy', 'score': 4},
        {'text': 'U.S.A.', 'score': 2},
        {'text': 'Dubai', 'score': 8},
      ]
    },
    {
      'questionText': 'What s your favorite Subject in B.tech ?',
      'answer': [
        {'text': 'Operating System', 'score': 4},
        {'text': 'DBMS', 'score': 4},
        {'text': 'JAVA', 'score': 2},
        {'text': 'App Development', 'score': 8},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalscore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0.0,
              title: const Text(
                "Quiz App",
                style: TextStyle(fontFamily: "Poppins"),
              ),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    quesionIndex: _questionIndex,
                    questions: _questions,
                  )
                : ResultPage(_totalscore, _resetQuiz)),
      ),
    );
  }
}
