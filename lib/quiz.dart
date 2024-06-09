import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  List<String> selectedAnswers = [];

  var _activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   _activeScreen = StartScreen(_switchScreen);
  //   super.initState();
  // }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'results-screen';
      });
    }
  }

  void _switchScreen() {
    setState(() {
      _activeScreen = 'question-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      _activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(_switchScreen);
    if (_activeScreen == 'question-screen') {
      screenWidget = QuetionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (_activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chooseAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    if (_activeScreen == 'start-screen') {
      selectedAnswers = [];
    }
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 78, 13, 151),
          Color.fromARGB(255, 107, 15, 168)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: screenWidget,
      ),
    ));
  }
}
