class QuizQuestion {
  const QuizQuestion(this.text,this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers);     // List.of(answers) creates a list copy of answers
    shuffledList.shuffle();// shuffles the list inplace, thats y we're copying original list here 
    return shuffledList;
  }
}