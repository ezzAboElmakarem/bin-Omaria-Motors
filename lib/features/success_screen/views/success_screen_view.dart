import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessScreenView extends StatelessWidget {
  final String image, texttitle, textSubtitle, textButton;
  final Widget navTo;
  final Color? backgroundColor,
      textTitleColor,
      textSubtitleColor,
      buttonColor,
      textButtonColor;
  const SuccessScreenView({
    super.key,
    required this.image,
    required this.texttitle,
    required this.textSubtitle,
    required this.navTo,
    required this.textButton,
    this.backgroundColor,
    this.textTitleColor,
    this.textSubtitleColor,
    this.buttonColor,
    this.textButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 320.h,
                width: 327.w,
              ),
              Text(
                texttitle,
                style: TextStyles.textstyle24
                    .copyWith(color: textTitleColor ?? Colors.white),
              ),
              SizedBox(height: 8.h),
              Text(
                textSubtitle,
                style: TextStyles.textstyle12.copyWith(
                    color: textSubtitleColor ?? ColorStyles.darkgreyColor),
              ),
              SizedBox(height: 40.h),
              CustomButton(
                buttonText: textButton,
                buttonColor: buttonColor,
                textColor: textButtonColor,
                onTap: () {
                  RouteUtils.navigateAndPopUntilFirstPage(navTo);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
