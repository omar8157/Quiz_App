class QuestionModel {
  final String questionTittle;
  final List<String> options;
  final String correctAnswer;
  String selectedAnswer = "";
  final String image;
  final String numOfQuestion;
  QuestionModel( {
   required  this.correctAnswer,
    required this.questionTittle,
    required this.options,
    required this.image,
    required this.numOfQuestion,
  });
}
