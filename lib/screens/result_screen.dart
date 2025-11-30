import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizapp/generated/assets.dart';
import 'package:quizapp/models/quiz_manager.dart';
import 'package:quizapp/screens/home_screen.dart';
import 'package:quizapp/screens/quiz_screen.dart';
import 'package:quizapp/theme/app_color.dart';
import 'package:quizapp/theme/app_decoration.dart';
import 'package:quizapp/theme/app_textstyle.dart';
import 'package:quizapp/widgets/moving_buuton.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.quizManager});
  final QuizManager quizManager;

  @override
  Widget build(BuildContext context) {
    num trueAnswers = quizManager.totalCorrectAnswers();
    num numOfQuestions = quizManager.questions.length;
    String emgoi = "";
    String rating = "";
    if (trueAnswers == numOfQuestions) {
      emgoi = "😍";
      rating = "Exellent";
    } else if (trueAnswers == numOfQuestions - 1) {
      emgoi = "🫡";
      rating = "Very good";
    } else if (trueAnswers == numOfQuestions / 2) {
      emgoi = "🙁";
      rating = "Good";
    } else {
      emgoi = "😭";
      rating = "Bad luck";
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: AppDecoration.backgroundgradient,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  Assets.imagesHomeGradinet,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    spacing: 10,
                    children: [
                      SizedBox(height: 100),
                      Text("Quiz Results", style: AppTextstyle.meduim24()),
                      CircleAvatar(
                        backgroundColor: AppColor.secondary,
                        radius: 80,
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  trueAnswers.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ),
                              ),

                              Text(
                                "/${numOfQuestions.toString()}",
                                style: AppTextstyle.meduim24(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(emgoi, style: TextStyle(fontSize: 70)),

                      Text(rating, style: AppTextstyle.meduim24()),
                      SizedBox(height: 20),
                      SvgPicture.asset(Assets.imagesCheckIcon, height: 55),
                      SizedBox(height: 20),
                      customButtonToMoving(
                        ontap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeScreen();
                              },
                            ),
                            
                          );
                        },
                        text: "Back To Home",
                      ),

                      customButtonToMoving(
                        ontap: () {
                          Navigator.pushReplacement(context,  MaterialPageRoute(
                              builder: (context) {
                                return QuizScreen();
                              },
                            ),);
                        },
                        text: "Restart a Quiz",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
