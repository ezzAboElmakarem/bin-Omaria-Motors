import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyAccountImage extends StatelessWidget {
  const MyAccountImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularPercentIndicator(
            radius: 54.0,
            lineWidth: 2.sp,
            backgroundColor: Colors.white,
            circularStrokeCap: CircularStrokeCap.round,
            percent: 0.5,
            center: Image.asset(
              AssetsData.userImage,
              height: 200.h,
              width: 200.w,
            ),
            progressColor: ColorStyles.blackColor,
          ),
        ),
        Positioned(
          bottom: 6.h,
          left: 8.w,
          child: Container(
            height: 32.h,
            width: 32.w,
            decoration: BoxDecoration(
              color: ColorStyles.blackColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white, width: 2.w),
            ),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 20.sp,
            ),
          ),
        ),
      ],
    );
  }
}
