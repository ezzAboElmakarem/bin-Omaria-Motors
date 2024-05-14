import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_dialog.dart';
import 'package:bin_omaira_motors/widgets/order_summary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeasurmentItem extends StatelessWidget {
  const MeasurmentItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        cutsomDialog(
          context: context,
          title: "Engine specifications",
          titleColor: Colors.grey.withOpacity(0.1),
          verticalPadding: 160.h,
          body: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, bottom: 12.h, top: 28.h),
              itemBuilder: (context, index) => const PriceCell(
                    name: 'Displacement',
                    price: '3.5',
                    showDivider: true,
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 2.h),
              itemCount: 5),
        );
      },
      child: Row(
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
      ),
    );
  }
}
