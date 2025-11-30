import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/generated/assets.dart';
import 'package:quizapp/theme/app_color.dart';
import 'package:quizapp/theme/app_decoration.dart';
import 'package:quizapp/theme/app_textstyle.dart';

class SelcetedOptionItem extends StatelessWidget {
  const SelcetedOptionItem({super.key, required this.option});
  final String option;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: ShapeDecoration(
        gradient: AppDecoration.selectanswergradient(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: AppColor.primary,
            child: SvgPicture.asset(Assets.imagesCheckIcon),
          ),
          Text(
            option,
            style: AppTextstyle.regular18(color: AppColor.primary),
          ),
        ],
      ),
    );
  }
}
