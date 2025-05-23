import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.textColor,
      this.fontSize});
  final String text;
  final VoidCallback onTap;
  final Color? textColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyles.textstyle16.copyWith(
            color: textColor ?? kPrimaryColor,
            fontWeight: FontWeight.normal,
            fontSize: fontSize ?? 16.sp),
      ),
    );
  }
}
