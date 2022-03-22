import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answers({Key? key}) : super(key: key);
  final void Function() selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 16.2,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
