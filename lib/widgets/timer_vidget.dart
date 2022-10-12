import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/utils/colors.dart';

class TimerWidget extends StatefulWidget {
  int second;

  TimerWidget({Key? key, required this.second}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        widget.second.toString().length == 1
            ? " " + widget.second.toString()
            : widget.second.toString(),
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontSize: 36, fontWeight: FontWeight.w500, color: MyColors.C_6066D0),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
