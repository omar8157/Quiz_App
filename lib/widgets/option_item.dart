import 'package:flutter/material.dart';
import 'package:quizapp/models/question_model.dart';
import 'package:quizapp/widgets/not_selected_option_item.dart';
import 'package:quizapp/widgets/selceted_option_item.dart';

class OptionItem extends StatelessWidget {
  OptionItem({
    super.key,
    this.isSelected = false,
    required this.questionModel,
    required this.option 
  });
  bool isSelected;
  final QuestionModel questionModel;
  

  final String option;
  Widget build(BuildContext context) {
    return isSelected
        ? SelcetedOptionItem(option: option)
        : NotSelectedOptionItem(option: option);
  }
}
