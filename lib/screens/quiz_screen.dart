import 'package:flutter/material.dart';
import 'package:quizapp/generated/assets.dart';
import 'package:quizapp/models/quiz_manager.dart';

import 'package:quizapp/theme/app_decoration.dart';

import 'package:quizapp/widgets/custom_back_button.dart';
import 'package:quizapp/widgets/custom_next_buuton.dart';
import 'package:quizapp/widgets/question_item.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuizManager quizManager = QuizManager();

  PageController pageController = PageController();

  int pageindex = 0;

 @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.backgroundgradient,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesQuestionGradient,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (index) {
                      pageindex = index;
                      setState(() {
                        
                      });
                    },
                    controller: pageController,
                    itemCount: quizManager.questions.length,
                    itemBuilder: (BuildContext context, index) {
                      return QuestionItem(
                        quizManager: quizManager,
                        questionModel: quizManager.questions[index],
                      );
                    },
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible:pageindex==0 ? false : true,
                      child: customBackButton(pageController: pageController , pageindex: pageindex,)),
                    Spacer(),
                    customNextButton(pageController: pageController , pageindex: pageindex, quizManager: quizManager,),
                  ],
                ),
                SizedBox(height: 55),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
