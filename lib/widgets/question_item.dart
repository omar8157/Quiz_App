import 'package:flutter/material.dart';
import 'package:quizapp/models/question_model.dart';
import 'package:quizapp/models/quiz_manager.dart';
import 'package:quizapp/theme/app_textstyle.dart';
import 'package:quizapp/widgets/header_question_item.dart';

import 'package:quizapp/widgets/option_item.dart';
import 'package:quizapp/widgets/option_list.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.questionModel, required this.quizManager});
  final QuestionModel questionModel;

  final QuizManager quizManager;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70),
          HeaderQuestionItem(questionModel: questionModel),
          SizedBox(height: 37),
          Text(questionModel.questionTittle, style: AppTextstyle.regular24()),
          SizedBox(height: 20),
          Expanded(child: OptionList(questionModel: questionModel , quizManager: quizManager,)),
        ],
      ),
    );
  }
}
