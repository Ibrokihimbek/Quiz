import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/screens/my_question.dart';
import 'package:quiz/screens/otp.dart';
import 'package:quiz/screens/quiz_page.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/images.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({super.key});

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Register',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 17.h),
            Padding(
              padding: const EdgeInsets.only(left: 5).r,
              child: Image.asset(MyImages.image_quiz_app),
            ),
            SizedBox(height: 55.h),
            Text_Field('Enter your mobile number'),
            SizedBox(height: 8.h),
            Text_Field('Password'),
            SizedBox(height: 8.h),
            Text_Field('Confirm Password'),
            SizedBox(height: 22.h),
            InkWell(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz_Page(),
                  ),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                width: 153.w,
                height: 33.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: MyColors.C_FCA82F),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'if you have already account click here',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: MyColors.C_000000.withOpacity(0.29)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Text_Field(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: TextField(
        textInputAction: TextInputAction.next,
        keyboardType: text == 'Enter your mobile number'
            ? TextInputType.phone
            : TextInputType.visiblePassword,
        obscureText: text == 'Enter your mobile number' ? false : true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: text,
          hintStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: MyColors.C_000000.withOpacity(0.29)),
          ),
        ),
      ),
    );
  }
}
