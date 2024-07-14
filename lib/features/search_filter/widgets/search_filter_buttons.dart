import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilterButtons extends StatelessWidget {
  const SearchFilterButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
            buttonText: 'cofirm_filter'.tr(),
            onTap: () {
              CustomNavigator.push(Routes.EmptyResult);

              // RouteUtils.navigateTo(const EmptyResult());
            },
          ),
          SizedBox(height: 16.h),
          CustomButton(
            buttonText: 'clear_filter'.tr(),
            buttonColor: Colors.grey[200],
            textColor: ColorStyles.blackColor,
            onTap: () {},
          ),
          SizedBox(height: 34.h),
        ],
      ),
    );
  }
}
