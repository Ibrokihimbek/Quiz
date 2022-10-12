import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/screens/my_question.dart';
import 'package:quiz/screens/quiz_page.dart';

import '../utils/colors.dart';

class ResultPage extends StatelessWidget {
  Map<int, bool> userResult;
  String pageName;
  ResultPage({Key? key, required this.userResult, required this.pageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Result',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Your result is",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 64.h),
          ListView.separated(
            shrinkWrap: true,
            itemCount: userResult.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                child: Container(
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: userResult[index]! ? Colors.green : Colors.red,
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Question:  ${index + 1}",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 32.w),
                      userResult[index]!
                          ? const Icon(Icons.check_circle_outlined, color: Colors.green,)
                          : const Icon(Icons.remove_circle_outline_sharp, color: Colors.red,)
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 8.h);
            },
          ),
          const SizedBox(height: 120),
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => Quiz_Page(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: IsColor()),
              width: 108.w,
              height: 32.h,
              child: Center(
                child: Text(
                  'Start Again',
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
    );
  }

  IsColor() {
    if (pageName == 'Question_Three_Page') {
      return MyColors.C_4F50FA;
    }
    if (pageName == 'Question_Page') {
      return MyColors.C_A48DD1;
    }
    if (pageName == 'Question_Two_Page') {
      return MyColors.C_EFBBE8;
    }
  }
}
