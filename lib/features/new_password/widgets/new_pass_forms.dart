import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/validations.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassForms extends StatefulWidget {
  const NewPassForms({
    super.key,
  });

  @override
  State<NewPassForms> createState() => _NewPassFormsState();
}

class _NewPassFormsState extends State<NewPassForms> {
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
          labelText: 'password'.tr(),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPassword = !isPassword;
              });
            },
            icon: Icon(isPassword ? Icons.visibility_off : Icons.visibility,
                color: ColorStyles.darkgreyColor),
          ),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          ispassword: confirmedPassword,
          isEnabled: true,
          type: TextInputType.visiblePassword,
          validation: Validator.password,
          hint: 'confirm_password'.tr(),
          labelText: 'confirm_password'.tr(),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                confirmedPassword = !confirmedPassword;
              });
            },
            icon: Icon(
                confirmedPassword ? Icons.visibility_off : Icons.visibility,
                color: ColorStyles.darkgreyColor),
          ),
        ),
      ],
    );
  }
}
