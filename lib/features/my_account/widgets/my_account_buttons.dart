import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAccountButtons extends StatelessWidget {
  const MyAccountButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Row(
              children: [
                Text(
                  "change_password".tr(),
                  style: TextStyles.textstyle14.copyWith(
                    color: ColorStyles.blackColor.withOpacity(0.6),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16.sp,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 84.h,
        ),
        CustomButton(
          buttonText: "save_changes".tr(),
          buttonColor: kPrimaryColor.withOpacity(0.1),
          textColor: kPrimaryColor,
          onTap: () {},
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomButton(
          buttonText: "delete_account".tr(),
          buttonColor: Colors.red.withOpacity(0.12),
          borderColor: ColorStyles.redColor,
          textColor: ColorStyles.redColor,
          onTap: () {},
        ),
      ],
    );
  }
}
