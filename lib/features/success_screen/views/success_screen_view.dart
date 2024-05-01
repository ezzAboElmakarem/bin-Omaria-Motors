import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessScreenView extends StatelessWidget {
  final String image, text1, text2, textButton;
  final Widget widget;
  const SuccessScreenView(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.widget,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                height: 320.h,
                width: 327.w,
              ),
              Text(
                text1,
                style: TextStyles.textstyle24.copyWith(color: Colors.white),
              ),
              SizedBox(height: 8.h),
              Text(
                text2,
                style: TextStyles.textstyle12
                    .copyWith(color: ColorStyles.darkgreyColor),
              ),
              SizedBox(height: 40.h),
              CustomButton(
                buttonText: textButton,
                onTap: () {
                  RouteUtils.navigateAndPopUntilFirstPage(widget);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
