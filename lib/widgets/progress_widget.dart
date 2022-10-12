import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/utils/colors.dart';

class ProgressWidget extends StatelessWidget {
  double currentWidth;
  int questionLength;
  int index;
  String pageName;

  ProgressWidget(
      {Key? key,
      required this.currentWidth,
      required this.questionLength,
      required this.index,
      required this.pageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24).r,
      child: Column(
        children: [
          SizedBox(height: 13.h),
          Padding(
            padding: const EdgeInsets.only(right: 95).r,
            child: Text(
              'Programming Test',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 23.h,
                  width: (MediaQuery.of(context).size.width * 0.8),
                  decoration: BoxDecoration(
                      color: MyColors.C_9A9999.withOpacity(0.017),
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(24)),
                ),
              ),
              Positioned(
                top: 12,
                left: 10,
                child: Container(
                  height: 10.h,
                  width: (MediaQuery.of(context).size.width * 0.6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 12,
                left: 10,
                child: AnimatedContainer(
                  height: 10.h,
                  curve: Curves.easeInOutSine,
                  width: currentWidth,
                  decoration: BoxDecoration(
                    color: IsColor(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  duration: const Duration(milliseconds: 500),
                ),
              ),
              Positioned(
                top: 10,
                left: 280,
                child: Text(
                  '${index}/${(questionLength)}',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  IsColor() {
    if (pageName == 'Question_Three_Page') {
      return MyColors.C_12AFFA;
    }
    if (pageName == 'Question_Page') {
      return MyColors.C_FCA82F;
    }
    if (pageName == 'Question_Two_Page') {
      return MyColors.C_A48DD1;
    }
  }
}
