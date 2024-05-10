import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAccountForms extends StatelessWidget {
  const MyAccountForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          ispassword: false,
          isEnabled: true,
          hint: "name".tr(),
          hintColor: ColorStyles.blackColor.withOpacity(0.6),
          borderColor: Colors.grey,
          suffixIcon: Icon(
            Icons.person,
            color: ColorStyles.blackColor.withOpacity(0.6),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomTextFormField(
          ispassword: false,
          isEnabled: true,
          borderColor: Colors.grey,
          hint: "email".tr(),
          hintColor: ColorStyles.blackColor.withOpacity(0.6),
          suffixIcon: Icon(
            Icons.email_rounded,
            color: ColorStyles.blackColor.withOpacity(0.6),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomTextFormField(
          ispassword: false,
          isEnabled: true,
          borderColor: Colors.grey,
          hint: "phone".tr(),
          hintColor: ColorStyles.blackColor.withOpacity(0.6),
          suffixIcon: Image.asset(
            AssetsData.phone,
            color: ColorStyles.blackColor.withOpacity(0.6),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
