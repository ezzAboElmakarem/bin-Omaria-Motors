import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/validations.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassForms extends StatefulWidget {
  const ChangePassForms({super.key});

  @override
  State<ChangePassForms> createState() => _ChangePassFormsState();
}

class _ChangePassFormsState extends State<ChangePassForms> {
  bool isPassword = true;
  bool confirmedPassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          ispassword: isPassword,
          isEnabled: true,
          type: TextInputType.visiblePassword,
          validation: Validator.password,
          hint: 'password'.tr(),
          borderColor: Colors.grey,
          hintColor: ColorStyles.blackColor.withOpacity(0.6),
          labelText: 'password'.tr(),
          labelColor: ColorStyles.blackColor.withOpacity(0.6),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPassword = !isPassword;
              });
            },
            icon: Icon(
              isPassword ? Icons.visibility_off : Icons.visibility,
              color: ColorStyles.blackColor.withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          ispassword: confirmedPassword,
          isEnabled: true,
          type: TextInputType.visiblePassword,
          validation: Validator.password,
          borderColor: Colors.grey,
          hint: 'confirm_password'.tr(),
          hintColor: ColorStyles.blackColor.withOpacity(0.6),
          labelText: 'confirm_password'.tr(),
          labelColor: ColorStyles.blackColor.withOpacity(0.6),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                confirmedPassword = !confirmedPassword;
              });
            },
            icon: Icon(
              confirmedPassword ? Icons.visibility_off : Icons.visibility,
              color: ColorStyles.blackColor.withOpacity(0.7),
            ),
          ),
        ),
      ],
    );
  }
}
