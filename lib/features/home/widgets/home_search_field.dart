import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              ispassword: false,
              isEnabled: false,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              hint: "search_text".tr(),
              hintColor: Colors.grey,
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          Container(
            height: 48.h,
            width: 60.w,
            decoration: BoxDecoration(
                // color: ColorStyles.redColor,
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: Colors.black.withOpacity(0.3))),
            child: Image.asset(AssetsData.filter),
          ),
        ],
      ),
    );
  }
}
