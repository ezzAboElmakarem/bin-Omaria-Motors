import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const InfoRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18.sp,
        ),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyles.textstyle12.copyWith(
            color: ColorStyles.blackColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
