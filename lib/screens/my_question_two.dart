import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/screens/reuslt.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/widgets/answers_widget.dart';
import 'package:quiz/widgets/question_widget.dart';

import '../widgets/progress_widget.dart';
import '../widgets/timer_vidget.dart';

class Question_Two_Page extends StatefulWidget {
  const Question_Two_Page({super.key});

  @override
  State<Question_Two_Page> createState() => _Question_Two_PageState();
}

class _Question_Two_PageState extends State<Question_Two_Page> {
  int currentQuestionIndex = 0;
  int start = 15;
  String buttontext = 'NEXT QUESTIONS';
  Map<int, bool> userResult = {
    0: false,
    1: false,
    2: false,
    3: false,
    4: false,
  };
  @override
  void initState() {
    super.initState();

    QuestionModel.questions_two.map((q) {
      q.answer1.isSelected = false;
      q.answer2.isSelected = false;
      q.answer3.isSelected = false;
      q.answer4.isSelected = false;
    }).toList();

    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (start != 0) {
          setState(() {
            start--;
          });
        } else {
          nextQuestion();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ProgressWidget(
                pageName: 'Question_Two_Page',
                index: currentQuestionIndex + 1,
                questionLength: QuestionModel.questions_two.length,
                currentWidth: (MediaQuery.of(context).size.width * 0.6) *
                    ((currentQuestionIndex + 1) /
                        QuestionModel.questions.length),
              ),
              SizedBox(height: 21.h),
              Stack(
                children: [
                  Positioned(
                    child: TimerWidget(second: start),
                    top: 8,
                    left: 25,
                  ),
                  Positioned(
                    top: 58,
                    left: 17,
                    child: Text(
                      'Coundown',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: MyColors.C_A48DD1),
                      ),
                    ),
                  ),
                  Container(
                    height: 51.h,
                    width: 55.w,
                    child: TweenAnimationBuilder<double>(
                      builder: (BuildContext context, value, Widget? child) {
                        return CircularProgressIndicator(
                          strokeWidth: 4.w,
                          backgroundColor: MyColors.C_A48DD1,
                          color: MyColors.C_EFBBE8,
                          value: value,
                        );
                      },
                      tween: Tween<double>(begin: 0.0, end: start / 15),
                      duration: const Duration(seconds: 1),
                    ),
                  ),
                ],
              ),
              QuestionWidget(
                pageName: 'Question_Two_Page',
                questionTitle:
                    QuestionModel.questions_two[currentQuestionIndex].question,
                index: currentQuestionIndex + 1,
              ),
              AnswersWidget(
                onAnswerSelected: (isTrue) {
                  userResult[currentQuestionIndex] = isTrue;
                },
                questionModel: QuestionModel.questions_two[currentQuestionIndex],
              ),
              SizedBox(height: 28.h),
              InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  nextQuestion();
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors.C_EFBBE8),
                  width: 108.w,
                  height: 32.h,
                  child: Center(
                    child: Text(
                      buttontext,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  nextQuestion() {
    setState(() {
      if (buttontext == 'FINISH') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(
              pageName: 'Question_Two_Page',
              userResult: userResult,
            ),
          ),
        );
      }
      if (currentQuestionIndex != QuestionModel.questions_two.length - 1) {
        start = 15;
        currentQuestionIndex++;
      }
      if (currentQuestionIndex == QuestionModel.questions_two.length - 1) {
        buttontext = 'FINISH';
      }
    });
  }
}
