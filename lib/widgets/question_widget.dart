import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/utils/colors.dart';

class QuestionWidget extends StatelessWidget {
  String questionTitle;
  int index;
  String pageName;
  QuestionWidget(
      {Key? key,
      required this.questionTitle,
      required this.index,
      required this.pageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 21.h),
            Text(
              "Question - ${index}",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: IsColor(),
                ),
              ),
            ),
            Text(
              questionTitle,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
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
