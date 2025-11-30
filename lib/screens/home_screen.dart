import 'package:flutter/material.dart';
import 'package:quizapp/generated/assets.dart';
import 'package:quizapp/screens/quiz_screen.dart';
import 'package:quizapp/theme/app_decoration.dart';
import 'package:quizapp/theme/app_textstyle.dart';
import 'package:quizapp/widgets/moving_buuton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: AppDecoration.backgroundgradient,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                Assets.imagesHomeGradinet,
                fit: BoxFit.fitHeight,
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text("Good morning,", style: AppTextstyle.regular18()),
                    SizedBox(height: 10),
                    Text(
                      "New Topic is Waiting",
                      style: AppTextstyle.meduim24(),
                    ),
                    Expanded(child: Image.asset(Assets.imagesHomeImage)),

                   customButtonToMoving(text: "Start Quiz" ,ontap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return QuizScreen();
              },
            ),
          );
        },)  ,
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

