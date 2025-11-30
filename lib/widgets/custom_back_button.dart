import 'package:flutter/material.dart';
import 'package:quizapp/theme/app_color.dart';
import 'package:quizapp/theme/app_textstyle.dart';

class customBackButton extends StatelessWidget {
  customBackButton({super.key, required this.pageController, required this.pageindex});
  PageController pageController;
  final int pageindex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pageController.previousPage(
          duration: Duration(milliseconds: 600),
          curve: Curves.linear,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.2, color: AppColor.secondary),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
            Text('Back', style: AppTextstyle.meduim18()),
          ],
        ),
      ),
    );
  }
}
