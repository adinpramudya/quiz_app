class QuizQuestion {
  const QuizQuestion(this.question, this.answers, this.answerCorrect);

  final String question;

  final List<String> answers;
  final int answerCorrect;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
