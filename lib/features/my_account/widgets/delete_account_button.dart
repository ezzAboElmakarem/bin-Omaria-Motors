import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:bin_omaira_motors/widgets/custom_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: "delete_account".tr(),
      buttonColor: Colors.red.withOpacity(0.12),
      borderColor: ColorStyles.redColor,
      textColor: ColorStyles.redColor,
      onTap: () {
        cutsomDialog(
          context: context,
          titleColor: Colors.white,
          verticalPadding: 106.h,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              children: [
                Image.asset(
                  AssetsData.flyingCar,
                  height: 180.h,
                  width: 180.w,
                ),
                // SizedBox(
                //   height: 24.h,
                // ),
                Text(
                  "are_you_sure".tr(),
                  style: TextStyles.textstyle16
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "confirm_delete_subtitle".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyles.textstyle12.copyWith(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomButton(
                  buttonText: "confirm_delete".tr(),
                  buttonColor: ColorStyles.redColor.withOpacity(0.1),
                  borderColor: ColorStyles.redColor.withOpacity(0.1),
                  textColor: ColorStyles.redColor,
                  onTap: () {},
                ),
                // SizedBox(
                //   height: 24.h,
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
