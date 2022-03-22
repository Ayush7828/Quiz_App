// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  // Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final int quesionIndex;
  final void Function(int) answerQuestion;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.quesionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[quesionIndex]['questionText'] as String),
        ...(questions[quesionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int),
              answer['text'] as String);
        }).toList()
      ],
    );
  }
}

//  Question(
    //       questions[questionIndex]['questionText'],
    //     ),
    //     ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
    //       return Answer(() => answerQuestion(answer['score']), answer['text']);
    //     }).toList()
    //   ],
    // );
