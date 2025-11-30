import 'package:flutter/material.dart';

import 'package:quizapp/theme/app_color.dart';

import 'package:quizapp/theme/app_textstyle.dart';


class NotSelectedOptionItem extends StatefulWidget {
 const NotSelectedOptionItem({
    super.key,
    
    required this.option,
    
  });
  
  final String option;
 

  @override
  State<NotSelectedOptionItem> createState() => _NotSelectedOptionItemState();
}

class _NotSelectedOptionItemState extends State<NotSelectedOptionItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: ShapeDecoration(
        color: Colors.white,
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
            child: CircleAvatar(radius: 10.2, backgroundColor: Colors.white),
          ),
          Text(
           widget.option ,
            style: AppTextstyle.regular18(color: AppColor.primary),
          ),
        ],
      ),
    );
  }
}
