import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDetailsButtons extends StatelessWidget {
  const CarDetailsButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 126.h,
      color: Colors.grey[100],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                CustomNavigator.push(Routes.PURCHASE);

                // RouteUtils.navigateTo(const PurchaseView());
              },
              child: Container(
                height: 54.h,
                width: 328.w,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text: "119.000 ${'currence'.tr()}  ",
                            style: TextStyles.textstyle16
                                .copyWith(color: Colors.white),
                          ),
                          TextSpan(
                            text: 'without_vat'.tr(),
                            style: TextStyles.textstyle12
                                .copyWith(color: Colors.white.withOpacity(0.8)),
                          ),
                        ]),
                      ),
                      SizedBox(
                        width: 34.w,
                      ),
                      VerticalDivider(
                        endIndent: 8.h,
                        indent: 8.h,
                      ),
                      const Spacer(),
                      Text(
                        'purchase'.tr(),
                        style: TextStyles.textstyle12
                            .copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 11.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Reserve with only 119.000 SAR without vat",
                    style:
                        TextStyles.textstyle12.copyWith(color: kPrimaryColor)),
                SizedBox(
                  width: 8.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12.sp,
                  color: kPrimaryColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
