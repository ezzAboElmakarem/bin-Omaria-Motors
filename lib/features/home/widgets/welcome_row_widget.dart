import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeRow extends StatelessWidget {
  const WelcomeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${'hello'.tr()} Omar',
                style: TextStyles.textstyle24
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'Welcome_text'.tr(),
                style: TextStyles.textstyle12.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.6)),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              CustomNavigator.push(Routes.NOTIFICATIONS);

              // RouteUtils.navigateTo(const NotificationView());
            },
            child: Container(
              width: 54.w,
              height: 54.w,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Icon(
                Icons.notifications,
                color: kPrimaryColor,
                size: 26.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
