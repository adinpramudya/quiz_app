import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}