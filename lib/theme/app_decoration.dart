import 'package:flutter/material.dart';


abstract class AppDecoration {
  static BoxDecoration selectedanswer = BoxDecoration(
    gradient: selectanswergradient(),
  );
  static ShapeDecoration notselectedanswer = ShapeDecoration(
    color:Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static LinearGradient selectanswergradient() {
    return LinearGradient(
      colors: [Color(0xffB8B2FF), Color(0xffC6C2F8)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    );
  }

  static BoxDecoration backgroundgradient = BoxDecoration(
    gradient: mainBackgroundgradient(),
  );

  static LinearGradient mainBackgroundgradient() {
    return LinearGradient(
    colors: [Color(0xff060B26), Color(0xff1A1F37)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  }
}
