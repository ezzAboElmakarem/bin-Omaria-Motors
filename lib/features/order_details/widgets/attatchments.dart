import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Attatchments extends StatelessWidget {
  const Attatchments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('attatchments'.tr(),
            style:
                TextStyles.textstyle16.copyWith(color: ColorStyles.blackColor)),
        SizedBox(height: 24.h),
        CustomTextFormField(
          ispassword: false,
          isEnabled: false,
          hint: "receipt".tr(),
          hintColor: Colors.grey,
          prefixIcon: Image.asset(AssetsData.file1),
          suffixIcon:
              Icon(Icons.file_download_outlined, color: ColorStyles.blackColor),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          ispassword: false,
          isEnabled: false,
          hint: "sale_contract".tr(),
          hintColor: Colors.grey,
          prefixIcon: Image.asset(AssetsData.file2),
          suffixIcon:
              Icon(Icons.file_download_outlined, color: ColorStyles.blackColor),
        ),
      ],
    );
  }
}
