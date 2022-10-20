import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/screens/otp.dart';
import 'package:quiz/screens/register.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/images.dart';

class Otp_Page extends StatefulWidget {
  const Otp_Page({super.key});

  @override
  State<Otp_Page> createState() => _Otp_PageState();
}

class _Otp_PageState extends State<Otp_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Otp',
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
            SizedBox(height: 50.h),
            Text(
              'Enter your 6 digit otp here',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: MyColors.C_000000.withOpacity(0.29)),
              ),
            ),
            SizedBox(height: 24.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: TextField(
                style: TextStyle(fontSize: 38),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            Text(
              '_ _ _ _ _ _',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: MyColors.C_000000),
              ),
            ),
            SizedBox(height: 22.h),
            InkWell(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register_Page(),
                  ),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Login',
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
            SizedBox(height: 12.h),
            Text(
              'login with social media',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: MyColors.C_000000.withOpacity(0.29)),
              ),
            ),
            SizedBox(height: 34.h),
            Image.asset(
              MyImages.image_otp,
              width: 154.w,
            ),
          ],
        ),
      ),
    );
  }
}
