import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    this.textColor,
    required this.onTap,
    this.width,
    this.height,
    this.buttonColor,
    this.borderColor,
  });
  final String buttonText;
  final Color? textColor;
  final Color? borderColor;
  final Color? buttonColor;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 58.h,
        width: width ?? 327.w,
        decoration: BoxDecoration(
          color: buttonColor ?? kPrimaryColor,
          border:
              Border.all(color: borderColor ?? buttonColor ?? kPrimaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyles.textstyle12
                .copyWith(color: textColor ?? Colors.white),
          ),
        ),
      ),
    );
  }
}
