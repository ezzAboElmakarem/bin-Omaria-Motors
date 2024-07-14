import 'package:bin_omaira_motors/features/notification/widgets/notification_item.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        appBarColor: ColorStyles.blackColor,
        title: 'notifications'.tr(),
        titleStyle: TextStyles.textstyle16.copyWith(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40.h),
              ListView.separated(
                  shrinkWrap: true,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => const NotificationItem(),
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.black.withOpacity(0.1),
                        endIndent: 10.w,
                        indent: 4.w,
                        height: 18.h,
                      ),
                  itemCount: 4),
            ],
          ),
        ),
      ),
    );
  }
}
