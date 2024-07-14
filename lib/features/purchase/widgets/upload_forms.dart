import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadsForms extends StatelessWidget {
  const UploadsForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "required_uploads".tr(),
          style: TextStyles.textstyle16,
        ),
        SizedBox(height: 24.h),
        CustomTextFormField(
          ispassword: false,
          isEnabled: false,
          hint: "bank_transfer_receipt".tr(),
          hintColor: Colors.grey,
          suffixIcon: Icon(
            Icons.file_upload_outlined,
            color: ColorStyles.blackColor.withOpacity(0.6),
          ),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          ispassword: false,
          isEnabled: false,
          hint: "id_photo".tr(),
          hintColor: Colors.grey,
          suffixIcon: Icon(
            Icons.file_upload_outlined,
            color: ColorStyles.blackColor.withOpacity(0.6),
          ),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          ispassword: false,
          isEnabled: false,
          hint: "driving_license".tr(),
          hintColor: Colors.grey,
          suffixIcon: Icon(
            Icons.file_upload_outlined,
            color: ColorStyles.blackColor.withOpacity(0.6),
          ),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          ispassword: false,
          isEnabled: false,
          hint: "agency_file".tr(),
          hintColor: Colors.grey,
          suffixIcon: Icon(
            Icons.file_upload_outlined,
            color: ColorStyles.blackColor.withOpacity(0.6),
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
