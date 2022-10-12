import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/widgets/option_widget.dart';

class AnswersWidget extends StatefulWidget {
  QuestionModel questionModel;
  ValueChanged<bool> onAnswerSelected;
  AnswersWidget({
    Key? key,
    required this.questionModel,
    required this.onAnswerSelected,
  }) : super(key: key);

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).r,
      child: Column(
        children: [
          SizedBox(height: 14.h),
          OptionWidget(
            option: widget.questionModel.answer1.title,
            isSelected: widget.questionModel.answer1.isSelected,
            onTap: () {
              setState(() {
                widget.questionModel.answer1.isSelected =
                    !widget.questionModel.answer1.isSelected;
                if (widget.questionModel.answer1.isSelected ==
                    widget.questionModel.answer1.isSelected) {
                  widget.questionModel.answer2.isSelected = false;
                  widget.questionModel.answer3.isSelected = false;
                  widget.questionModel.answer4.isSelected = false;
                }
              });
              widget.onAnswerSelected(widget.questionModel.trueAnswer == 1);
            },
          ),
          SizedBox(height: 8.h),
          OptionWidget(
            option: widget.questionModel.answer2.title,
            isSelected: widget.questionModel.answer2.isSelected,
            onTap: () {
              setState(() {
                widget.questionModel.answer2.isSelected =
                    !widget.questionModel.answer2.isSelected;
                if (widget.questionModel.answer2.isSelected ==
                    widget.questionModel.answer2.isSelected) {
                  widget.questionModel.answer1.isSelected = false;
                  widget.questionModel.answer3.isSelected = false;
                  widget.questionModel.answer4.isSelected = false;
                }
              });
              widget.onAnswerSelected(
                widget.questionModel.trueAnswer == 2,
              );
            },
          ),
          SizedBox(height: 8.h),
          OptionWidget(
            option: widget.questionModel.answer3.title,
            isSelected: widget.questionModel.answer3.isSelected,
            onTap: () {
              setState(() {
                widget.questionModel.answer3.isSelected =
                    !widget.questionModel.answer3.isSelected;
                if (widget.questionModel.answer3.isSelected ==
                    widget.questionModel.answer3.isSelected) {
                  widget.questionModel.answer1.isSelected = false;
                  widget.questionModel.answer2.isSelected = false;
                  widget.questionModel.answer4.isSelected = false;
                }
              });
              widget.onAnswerSelected(
                widget.questionModel.trueAnswer == 3,
              );
            },
          ),
          SizedBox(height: 8.h),
          OptionWidget(
            option: widget.questionModel.answer4.title,
            isSelected: widget.questionModel.answer4.isSelected,
            onTap: () {
              setState(() {
                widget.questionModel.answer4.isSelected =
                    !widget.questionModel.answer4.isSelected;
                if (widget.questionModel.answer4.isSelected ==
                    widget.questionModel.answer4.isSelected) {
                  widget.questionModel.answer1.isSelected = false;
                  widget.questionModel.answer2.isSelected = false;
                  widget.questionModel.answer3.isSelected = false;
                }
              });
              widget.onAnswerSelected(
                widget.questionModel.trueAnswer == 4,
              );
            },
          ),
        ],
      ),
    );
  }
}
