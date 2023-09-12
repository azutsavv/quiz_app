class quizQuestion {
  const quizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getshuffledAnswer() {
    final shuffledAnswer = List.of(answers);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}
