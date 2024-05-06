import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeasurmentsListView extends StatelessWidget {
  const MeasurmentsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Text(
            "measurments".tr(),
            style:
                TextStyles.textstyle16.copyWith(fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 10.h),
          ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const MeasurmentItem(),
              separatorBuilder: (context, index) => SizedBox(height: 8.h),
              itemCount: 4),
        ],
      ),
    );
  }
}

class MeasurmentItem extends StatelessWidget {
  const MeasurmentItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "-",
          style: TextStyles.textstyle20,
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            "measurments".tr(),
            style: TextStyles.textstyle12.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black.withOpacity(0.6)),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          size: 16.sp,
        )
      ],
    );
  }
}
