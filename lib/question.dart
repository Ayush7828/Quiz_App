import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        questionText,
        style: const TextStyle(
            fontSize: 22.0, fontFamily: "Poppins", fontWeight: FontWeight.bold),
      ),
    );
  }
}
