// ignore_for_file: must_be_immutable

import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/text_styles.dart';
import 'custom_text_button.dart';

class QuestionAndButton extends StatelessWidget {
  QuestionAndButton(
      {super.key,
      required this.text,
      required this.questionText,
      required this.onTap,
      this.textColor});
  final String text;
  Color? textColor = kPrimaryColor;
  final String questionText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questionText,
          style: TextStyles.textstyle14.copyWith(
            fontWeight: FontWeight.normal,
            color: Colors.white.withOpacity(0.6),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        CustomTextButton(
            text: text, onTap: onTap, textColor: textColor ?? kPrimaryColor),
      ],
    );
  }
}
