import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilterForms extends StatelessWidget {
  const SearchFilterForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            title: "model".tr(),
            borderColor: Colors.grey.withOpacity(0.3),
            hint: 'X3 Model 3',
            hintColor: Colors.black.withOpacity(0.4),
          ),
          SizedBox(height: 24.h),
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            title: "year".tr(),
            borderColor: Colors.grey.withOpacity(0.3),
            hint: '2022',
            hintColor: Colors.black.withOpacity(0.4),
          ),
          SizedBox(height: 24.h),
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            title: "color".tr(),
            borderColor: Colors.grey.withOpacity(0.3),
            hint: 'grey',
            hintColor: Colors.black.withOpacity(0.4),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
