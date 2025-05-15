import 'package:bin_omaira_motors/features/sign_in/widgets/country_codes.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/validations.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInForms extends StatefulWidget {
  const SignInForms({
    super.key,
  });

  @override
  State<SignInForms> createState() => _SignInFormsState();
}

class _SignInFormsState extends State<SignInForms> {
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            type: TextInputType.phone,
            textColor: Colors.white,
            validation: Validator.phone,
            hint: 'phone_number'.tr(),
            labelText: 'phone_number'.tr(),
            prefixIcon: AppCountryPicker(
              onSelect: (String country, String code) {},
            ),
            suffixIcon: Icon(Icons.phone, color: ColorStyles.darkgreyColor),
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            ispassword: isPassword,
            isEnabled: true,
            textColor: Colors.white,
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
        ],
      ),
    );
  }
}
