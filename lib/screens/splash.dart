import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/screens/login_page.dart';
import 'package:quiz/screens/quiz_page.dart';
import 'package:quiz/utils/images.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool islog = false;

  Future<bool> isLoggedIn() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    islog = _pref.getBool('isLoggedIn') ?? false;
    return _pref.getBool('isLoggedIn') ?? false;
  }

  @override
  void initState() {
    isLoggedIn();
    goNext();
  }

  void goNext() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) {
              return islog ? Quiz_Page() : Log_In_Page();
            },
          ),
        );
      },
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
