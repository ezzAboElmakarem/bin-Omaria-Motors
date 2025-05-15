import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/helper/validations.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsForms extends StatelessWidget {
  const ContactUsForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32.h,
        ),
        Text(
          "contact_us_form".tr(),
          style: TextStyles.textstyle14,
        ),
        SizedBox(
          height: 24.h,
        ),
        CustomTextFormField(
          ispassword: false,
          isEnabled: true,
          type: TextInputType.name,
          validation: Validator.name,
          labelText: "name".tr(),
          labelColor: ColorStyles.blackColor.withOpacity(0.6),
          borderColor: ColorStyles.blackColor.withOpacity(0.6),
          suffixIcon: Icon(
            Icons.person,
            color: ColorStyles.hintColor,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomTextFormField(
          ispassword: false,
          isEnabled: true,
          type: TextInputType.phone,
          validation: Validator.phone,
          labelText: "phone".tr(),
          labelColor: ColorStyles.blackColor.withOpacity(0.6),
          borderColor: ColorStyles.blackColor.withOpacity(0.6),
          suffixIcon: Icon(
            Icons.phone,
            color: ColorStyles.hintColor,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomTextFormField(
          ispassword: false,
          isEnabled: true,
          type: TextInputType.text,
          maxLines: 6,
          labelText: "your_msg".tr(),
          labelColor: ColorStyles.blackColor.withOpacity(0.6),
          borderColor: ColorStyles.blackColor.withOpacity(0.6),
          // suffixIcon: Icon(
          //   Icons.email,
          //   color: ColorStyles.blackColor.withOpacity(0.6),
          // ),
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
