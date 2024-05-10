import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsInfo extends StatelessWidget {
  final String title, icon, subtitle;
  const AboutUsInfo({
    super.key,
    required this.title,
    required this.icon,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(icon),
            SizedBox(width: 14.w),
            Text(
              title,
              style: TextStyles.textstyle16.copyWith(color: kPrimaryColor),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Text(
          subtitle,
          style: TextStyles.textstyle16.copyWith(
            color: ColorStyles.blackColor.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
