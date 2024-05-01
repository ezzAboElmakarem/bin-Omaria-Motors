import 'package:bin_omaira_motors/features/welcome_Screen/widgets/welcome_screen_buttons.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 64.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'skip_login'.tr(),
                      style: TextStyles.textstyle12.copyWith(
                          fontWeight: FontWeight.w100, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.sp,
                        )),
                  ],
                ),
                Image.asset(
                  AssetsData.loginImage,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Say hello',
                      style:
                          TextStyles.textstyle24.copyWith(color: kPrimaryColor),
                    ),
                    TextSpan(
                      text: ' to your next awesome vehicle',
                      style:
                          TextStyles.textstyle24.copyWith(color: Colors.white),
                    ),
                  ]),
                ),
                SizedBox(height: 8.h),
                Text(
                  'welcome_subtitle'.tr(),
                  style: TextStyles.textstyle12.copyWith(
                      fontWeight: FontWeight.w300, color: Colors.grey),
                ),
                SizedBox(height: 70.h),
                const WelcomeScreenButtons(),
                SizedBox(
                  height: 82.h,
                ),
              ],
            ),
          ),
        ));
  }
}
