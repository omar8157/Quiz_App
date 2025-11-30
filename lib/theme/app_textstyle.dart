import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextstyle {
  static TextStyle regular24 ({Color?color})=> TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
    color: color??Colors.white
  );
  static TextStyle meduim24 ({Color?color})=> TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    color: color??Colors.white
  );
  static TextStyle regular18 ({Color?color})=> TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
    color: color??Colors.white
  );
  static TextStyle meduim18 ({Color?color})=> TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    color: color??Colors.white
  );
}