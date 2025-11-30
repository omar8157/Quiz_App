import 'package:flutter/material.dart';
import 'package:quizapp/models/question_model.dart';
import 'package:quizapp/models/quiz_manager.dart';
import 'package:quizapp/widgets/option_item.dart';

class OptionList extends StatefulWidget {
  const OptionList({
    super.key,
    required this.questionModel,
    required this.quizManager,
  });
  final QuestionModel questionModel;
  final QuizManager quizManager;
  @override
  State<OptionList> createState() => _OptionListState();
}

class _OptionListState extends State<OptionList>
    with AutomaticKeepAliveClientMixin {
  int selectedoption = -1;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemCount: widget.questionModel.options.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            selectedoption = index;
            widget.quizManager.selectAnswer(
              widget.questionModel,
              widget.questionModel.options[index],
            );
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: OptionItem(
              isSelected: selectedoption == index,
              questionModel: widget.questionModel,
              option: widget.questionModel.options[index],
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
