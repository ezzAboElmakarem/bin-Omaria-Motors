import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Text(
            "description".tr(),
            style:
                TextStyles.textstyle16.copyWith(fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "-",
                style: TextStyles.textstyle14,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  "Heat insulation with 10 years free warranty + 30% discount on other services.",
                  style: TextStyles.textstyle10.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "-",
                style: TextStyles.textstyle14,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  "Heat insulation with 10 years free warranty + 30% discount on other services.",
                  style: TextStyles.textstyle10.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
