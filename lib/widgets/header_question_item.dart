import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:quizapp/models/question_model.dart';
import 'package:quizapp/theme/app_textstyle.dart';

class HeaderQuestionItem extends StatelessWidget {
  const HeaderQuestionItem({super.key, required this.questionModel});
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Color(0xFF8D83FF),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: const Color(0xFFB8B2FF) /* OUTLINE-VIOLET */,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,

        children: [
        SvgPicture.asset(questionModel.image),
        Text("Question ${questionModel.numOfQuestion}" , style: AppTextstyle.regular18(), )
        ],
      ),
    );
  }
}
