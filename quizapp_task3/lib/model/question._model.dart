class QuizQuestion{
    final String question;
    final List<String> answer;

   const  QuizQuestion(this.question, this.answer);

    List<String> get shuffeledAnswer{
      List<String> shuffeled = List.of(answer);

      shuffeled.shuffle();

      return shuffeled;
    }
}