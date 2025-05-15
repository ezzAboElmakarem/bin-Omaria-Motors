import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepositeSection extends StatelessWidget {
  const DepositeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              " ${"deposit".tr()}: 80.000 ${"currence".tr()}",
              style:
                  TextStyles.textstyle16.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Text(
          "1- Send the amount shown to one of banking detail ",
          style: TextStyles.textstyle12
              .copyWith(color: ColorStyles.blackColor.withOpacity(0.6)),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          "2- Upload bank transfer receipt",
          style: TextStyles.textstyle12
              .copyWith(color: ColorStyles.blackColor.withOpacity(0.6)),
        ),
      ],
    );
  }
}
