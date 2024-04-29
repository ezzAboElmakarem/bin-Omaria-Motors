import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreenButtons extends StatelessWidget {
  const WelcomeScreenButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(buttonText: 'create_new_account'.tr(), onTap: () {}),
        SizedBox(
          height: 16.h,
        ),
        CustomButton(
            buttonText: 'signin'.tr(),
            onTap: () {},
            buttonColor: ColorStyles.darkgreyColor),
      ],
    );
  }
}
