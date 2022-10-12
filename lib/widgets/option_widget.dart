import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionWidget extends StatefulWidget {
  String option;
  VoidCallback onTap;
  bool isSelected;
  OptionWidget({
    Key? key,
    required this.isSelected,
    required this.option,
    required this.onTap,
  }) : super(key: key);

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: widget.isSelected ? Colors.green: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 1),
            ]),
        padding: const EdgeInsets.only(left: 12, top: 8).r,
        width: double.infinity.w,
        height: 28.h,
        child: Text(
          widget.option,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
