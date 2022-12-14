import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/screens/otp.dart';
import 'package:quiz/screens/quiz_page.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/images.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Log_In_Page extends StatefulWidget {
  const Log_In_Page({super.key});

  @override
  State<Log_In_Page> createState() => _Log_In_PageState();
}

class _Log_In_PageState extends State<Log_In_Page> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Login',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 17.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Image.asset(MyImages.image_clipart),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Telefon raqam kiritlmadi";
                    }
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter your mobile number',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: MyColors.C_000000.withOpacity(0.29)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22.h),
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    saveLogin(context);
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
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
              SizedBox(height: 120.h),
              Text(
                'term???s and conditons apply',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MyColors.C_000000.withOpacity(0.29)),
                ),
              ),
              Text(
                'POWERD BY - sparrowdevops.com',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MyColors.C_000000.withOpacity(0.29)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void saveLogin(context) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setBool("isLoggedIn", true);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Otp_Page()));
  }
}
