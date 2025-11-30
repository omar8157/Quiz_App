import 'package:quizapp/generated/assets.dart';
import 'package:quizapp/models/question_model.dart';

class QuizManager {
  List<QuestionModel> questions = [
    QuestionModel(
      correctAnswer: "omar",
      questionTittle:
          "How would you describe your level of satisfaction with the healthcare system?",
      options: ["omar", "mohamed", "ibrahem", "abdalla"],
      image: Assets.imagesQ1,
      numOfQuestion: "1",
    ),
    QuestionModel(
      correctAnswer: "ana",
      questionTittle:
          "How would you your level of satisfaction with the healthcare system?",
      options: ["ana", "wad", "gamed", "awwy"],
      image: Assets.imagesQ2,
      numOfQuestion: "2",
    ),
    QuestionModel(
      correctAnswer: "yamken",
      questionTittle:
          "How would you describe your level of satisfaction with the healthcare system?",
      options: ["yamken", "nas3ny", "hag2", "momke3n"],
      image: Assets.imagesQ3,
      numOfQuestion: "3",
    ),
    QuestionModel(
      correctAnswer: "tayeb",
      questionTittle:
          "How would you describe your level of satisfaction with the healthcare system?",
      options: ["tayeb", "fadel", "eh", "tany"],
      image: Assets.imagesQ4,
      numOfQuestion: "4",
    ),
  ];

  void selectAnswer(QuestionModel question, String answer) {
    question.selectedAnswer = answer;
  }

  num totalCorrectAnswers() {
    // return questions
    //     .where((question) => question.selectedAnswer == question.correctAnswer)
    //     .length;

    int correctAnswers = 0;
    for (var question in questions) {
      if (question.selectedAnswer == question.correctAnswer) {
        correctAnswers++;
      }
    }
    return correctAnswers;
  }
}
