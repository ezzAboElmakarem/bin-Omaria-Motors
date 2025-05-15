import 'package:bin_omaira_motors/features/sign_in/widgets/country_codes.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/validations.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgetPassForm extends StatelessWidget {
  const ForgetPassForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      ispassword: false,
      isEnabled: true,
      type: TextInputType.phone,
      validation: Validator.phone,
      hint: 'phone_number'.tr(),
      labelText: 'phone_number'.tr(),
      prefixIcon: AppCountryPicker(
        onSelect: (String country, String code) {},
      ),
      suffixIcon:
          Image.asset(AssetsData.phone, color: ColorStyles.darkgreyColor),
    );
  }
}
