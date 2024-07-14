import 'package:bin_omaira_motors/features/purchase/widgets/summary_car_card.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/order_summary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstStepContent extends StatelessWidget {
  const FirstStepContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // shrinkWrap: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("car_details".tr(), style: TextStyles.textstyle16),
          SizedBox(height: 24.h),
          const SummaryCarCard(),
          SizedBox(height: 32.h),
          Text("order_summary".tr(), style: TextStyles.textstyle16),
          SizedBox(height: 24.h),
          const OrderSummary(),
        ],
      ),
    );
  }
}
