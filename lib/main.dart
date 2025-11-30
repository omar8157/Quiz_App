import 'package:flutter/material.dart';
import 'package:quizapp/screens/home_screen.dart';

void main() {
  runApp(quizapp());
}

class quizapp extends StatelessWidget {
  const quizapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
   theme: ThemeData(
    fontFamily: "Gilory",
   ),
    home: 
     HomeScreen()
    );
  }
}
