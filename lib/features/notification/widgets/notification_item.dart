import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 54.w,
          height: 54.w,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.h),
            child: Image.asset(
              AssetsData.notificationIcon,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Text(
          'Sara Omar',
          style: TextStyles.textstyle14.copyWith(fontWeight: FontWeight.normal),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18.sp,
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
      ],
    );
  }
}
