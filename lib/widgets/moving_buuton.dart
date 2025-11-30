import 'package:flutter/material.dart';
import 'package:quizapp/screens/quiz_screen.dart';
import 'package:quizapp/theme/app_textstyle.dart';

class customButtonToMoving extends StatelessWidget {
  const customButtonToMoving({super.key, required this.ontap, required this.text});
  final VoidCallback ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(15),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 26),
          child: Center(
            child: Text(
              text,
              style: AppTextstyle.meduim24(color: Color(0xff2B0063)),
            ),
          ),
        ),
      ),
    );
  }
}
