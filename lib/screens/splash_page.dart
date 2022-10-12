import 'package:flutter/material.dart';
import 'package:quiz/screens/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/utils/images.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({super.key});

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Log_In_Page(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: const BoxDecoration(
            color: Color(0xff4047C1),
            image: DecorationImage(
                image: AssetImage(MyImages.image_splash), fit: BoxFit.cover),
          ),
          // color: Colors.amber,
        ),
      ),
    );
  }
}
