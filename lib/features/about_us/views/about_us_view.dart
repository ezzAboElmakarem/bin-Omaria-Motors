import 'package:bin_omaira_motors/features/about_us/widgets/about_us_info.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "about_us".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: Column(
            children: [
              Image.asset(AssetsData.blueLogo),
              SizedBox(height: 70.h),
              Text(
                "Lorem ipsum dolor sit amet, adipiscingse sed do eiusmod tempor incididunt sed Lorem sum dolor sit amet, adipiscingse sed do eiusmod se tempor incididunt sed Lorem ..",
                style: TextStyles.textstyle14.copyWith(
                  color: ColorStyles.blackColor.withOpacity(0.6),
                ),
              ),
              SizedBox(height: 32.h),
              AboutUsInfo(
                icon: AssetsData.ourMission,
                title: "our_mission".tr(),
                subtitle:
                    "Lorem ipsum dolor sit amet, adipiscingse sed do eiusmod tempor incididunt sed incididunt..",
              ),
              SizedBox(height: 24.h),
              AboutUsInfo(
                icon: AssetsData.ourVision,
                title: "our_vision".tr(),
                subtitle:
                    "Lorem ipsum dolor sit amet, adipiscingse sed do eiusmod tempor incididunt sed incididunt..",
              ),
              SizedBox(height: 24.h),
              AboutUsInfo(
                icon: AssetsData.ourValues,
                title: "our_values".tr(),
                subtitle:
                    "Lorem ipsum dolor sit amet, adipiscingse sed do eiusmod tempor incididunt sed incididunt..",
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
