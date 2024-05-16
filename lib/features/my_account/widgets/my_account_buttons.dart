import 'package:bin_omaira_motors/features/my_account/widgets/delete_account_button.dart';
import 'package:bin_omaira_motors/features/my_account/widgets/save_changes_button.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
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
          onTap: () {
            CustomNavigator.push(Routes.CHNAGEPASSWORD);

            // RouteUtils.navigateTo(const ChangePassView());
          },
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
        const SaveChangesButton(),
        SizedBox(
          height: 16.h,
        ),
        const DeleteAccountButton(),
      ],
    );
  }
}
