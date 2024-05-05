import 'package:bin_omaira_motors/features/search/widgets/search_app_bar.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class EmptyResult extends StatelessWidget {
  const EmptyResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        context: context,
        appBarHeight: 120.h,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
          child: Center(
            child: Column(
              children: [
                Lottie.asset(
                  "assets/animations/empty_result.json",
                  height: 220.h,
                  width: 327.w,
                ),
                // Image.asset(
                //   AssetsData.emptyResult,
                // height: 220.h,
                // width: 327.w,
                // ),
                Text(
                  "no_cars_found".tr(),
                  style: TextStyles.textstyle24.copyWith(color: Colors.black),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: 250.w,
                  child: Text(
                    "empty_result_subtitle".tr(),
                    textAlign: TextAlign.center,
                    style:
                        TextStyles.textstyle12.copyWith(color: Colors.black54),
                  ),
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
