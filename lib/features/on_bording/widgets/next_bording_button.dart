import 'package:bin_omaira_motors/features/on_bording/models/onbording_model.dart';
import 'package:bin_omaira_motors/features/welcome_Screen/view/welcome_view.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class NextBordingButton extends StatelessWidget {
  const NextBordingButton({
    super.key,
    required this.isLastScreen,
    required this.bordingController,
    required this.currentIndex,
  });

  final bool isLastScreen;
  final PageController bordingController;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 34.h,
      left: 24.w,
      child: GestureDetector(
        onTap: () {
          if (isLastScreen == true) {
            RouteUtils.navigateAndPopAll(const WelcomeView());
          } else {
            bordingController.nextPage(
                duration: const Duration(milliseconds: 700),
                curve: Curves.fastLinearToSlowEaseIn);
          }
        },
        child: CircularPercentIndicator(
          radius: 42.0,
          lineWidth: 10.sp,
          backgroundColor: kPrimaryColor.withOpacity(0.2),
          circularStrokeCap: CircularStrokeCap.round,
          percent: (currentIndex + 1) / onbordingItems.length,
          center: CircleAvatar(
              radius: 28,
              backgroundColor: kPrimaryColor,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 16.sp,
              )),
          progressColor: const Color(0xff397989),
        ),
      ),
    );
  }
}
