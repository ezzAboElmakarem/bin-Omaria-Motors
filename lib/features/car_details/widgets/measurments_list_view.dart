import 'package:bin_omaira_motors/features/car_details/widgets/measurment_item.dart';
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
