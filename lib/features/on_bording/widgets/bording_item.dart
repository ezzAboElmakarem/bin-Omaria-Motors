import 'package:bin_omaira_motors/features/welcome_Screen/view/welcome_view.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../helper/text_styles.dart';
import '../models/onbording_model.dart';

Widget buildBordingItem(BordingModel model, {required int currentIndex}) =>
    Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(model.image, fit: BoxFit.fill),
        ),
        SizedBox(height: 20.h),
        Positioned(
          bottom: 204.h,
          left: 24.w,
          child: Text(
            model.title,
            style: TextStyles.textstyle24.copyWith(color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 144.h,
          left: 24.w,
          right: 24.w,
          child: Text(
            model.body,
            textScaler: TextScaler.noScaling,
            style: TextStyles.textstyle16.copyWith(
              color: Colors.white.withOpacity(.6),
              fontWeight: FontWeight.w300,
              fontSize: 15.sp,
            ),
          ),
        ),
        Positioned(
          bottom: 74.h,
          // left: 24.w,
          right: 15.w,
          child: GestureDetector(
            onTap: () {
              RouteUtils.navigateAndPopAll(const WelcomeView());
            },
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Text(
                'skip_intro'.tr(),
                textScaler: TextScaler.noScaling,
                style: TextStyles.textstyle12
                    .copyWith(color: Colors.white.withOpacity(.6)),
              ),
            ),
          ),
        ),
      ],
    );
