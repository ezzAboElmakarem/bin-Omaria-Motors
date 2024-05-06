import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPurchaseState extends StatelessWidget {
  const NewPurchaseState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // width: 100.w,
          height: 32.h,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Center(
              child: Text(
                'new_purchase'.tr(),
                style: TextStyles.textstyle10.copyWith(
                    color: ColorStyles.blackColor,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: 86.w,
          height: 32.w,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Center(
            child: Text("${'90,000'} ${'currence'.tr()}",
                style: TextStyles.textstyle10.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
