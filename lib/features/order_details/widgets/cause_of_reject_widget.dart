import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CauseOfReject extends StatelessWidget {
  const CauseOfReject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Transform.rotate(
              angle: 3.15,
              child: Icon(
                Icons.info_outline,
                color: ColorStyles.blackColor,
                size: 24.sp,
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            Text(
              "case_of_order_rejection".tr(),
              style:
                  TextStyles.textstyle16.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Container(
          // height: 100.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
              color: ColorStyles.greyColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(18)),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, adipiscingse sed do eiusmod tempor incididunt sed.."),
            ),
          ),
        ),
      ],
    );
  }
}
