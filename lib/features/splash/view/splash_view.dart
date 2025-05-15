import 'package:bin_omaira_motors/features/splash/widgets/animated_logo.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_baground_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool animate = false;
  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    setState(() {
      animate = true;
    });
    // await Future.delayed(const Duration(milliseconds: 5000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomBackGroundImage(
            imageUrl: AssetsData.splashScreen,
            child:
                animate ? const AnimatedImagesBody() : const SizedBox.shrink(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 3000),
            curve: Curves.decelerate,
            left: animate ? 60.h : -1000,
            right: 40.w,
            bottom: 170.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 68.h),
                Image.asset(AssetsData.hiddenLogo, fit: BoxFit.cover),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 3000),
            curve: Curves.decelerate,
            bottom: animate ? 100.h : -1000,
            right: 40.w,
            left: 66.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'say_hello'.tr(),
                      style:
                          TextStyles.textstyle24.copyWith(color: kPrimaryColor),
                    ),
                    TextSpan(
                      text: 'awesome_car'.tr(),
                      style:
                          TextStyles.textstyle24.copyWith(color: Colors.white),
                    ),
                  ]),
                ),
                SizedBox(height: 48.h),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 54.w),
                    Text(
                      'powered_by'.tr(),
                      style: TextStyles.textstyle10.copyWith(
                          fontWeight: FontWeight.w200, color: Colors.grey),
                    ),
                    Text(
                      'Kian Al-Rqmiah',
                      style: TextStyles.textstyle10.copyWith(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
