import 'package:flutter/material.dart';
import 'package:quizapp/models/quiz_manager.dart';
import 'package:quizapp/screens/result_screen.dart';

import 'package:quizapp/theme/app_color.dart';
import 'package:quizapp/theme/app_textstyle.dart';

class customNextButton extends StatelessWidget {
  customNextButton({
    super.key,
    required this.pageController,
    required this.pageindex,
    required this.quizManager,
  });
  PageController pageController;
  final int pageindex;
  final QuizManager quizManager;
  @override
  Widget build(BuildContext context) {
    return pageindex == quizManager.questions.length - 1
        ? GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ResultScreen(quizManager: quizManager,);
                  },
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: ShapeDecoration(
                color: AppColor.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  Text('Show Result', style: AppTextstyle.meduim18()),
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              pageController.nextPage(
                duration: Duration(milliseconds: 600),
                curve: Curves.linear,
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: ShapeDecoration(
                color: AppColor.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  Text('Next', style: AppTextstyle.meduim18()),
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
                ],
              ),
            ),
          );
  }
}
