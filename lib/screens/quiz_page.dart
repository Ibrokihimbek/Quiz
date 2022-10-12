import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/screens/my_question.dart';
import 'package:quiz/screens/my_question_three.dart';
import 'package:quiz/screens/my_question_two.dart';
import 'package:quiz/screens/otp.dart';
import 'package:quiz/screens/quiz_page.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/images.dart';

class Quiz_Page extends StatefulWidget {
  const Quiz_Page({super.key});

  @override
  State<Quiz_Page> createState() => _Quiz_PageState();
}

class _Quiz_PageState extends State<Quiz_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 17.h),
                Padding(
                  padding: const EdgeInsets.only(left: 5).r,
                  child: Image.asset(MyImages.image_quiz_app),
                ),
                SizedBox(height: 30.h),
                QuizButton('''Avtomobillarga oid 
           savollar''', MyColors.C_ED719A, MyColors.C_EC8771, Question_Page()),
                SizedBox(height: 20.h),
                QuizButton('''Ona Tiliga oid 
      savollar''', MyColors.C_A48DD1, MyColors.C_EFBBE8,
                    Question_Two_Page()),
                SizedBox(height: 20.h),
                QuizButton('''Matematikaga oid 
          savollar''', MyColors.C_4D79EE, MyColors.C_12AFFA,
                    Question_Three_Page()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget QuizButton(String title, Color color1, Color color2, Widget pageNAme) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pageNAme,
          ),
        );
      },
      child: Container(
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
        width: double.infinity.w,
        height: 100.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [color1, color2],
          ),
        ),
      ),
    );
  }
}
