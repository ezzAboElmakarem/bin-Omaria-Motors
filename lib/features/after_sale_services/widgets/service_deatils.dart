import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceDetails extends StatelessWidget {
  final String serviceName, serviceDetails;
  const ServiceDetails({
    super.key,
    required this.serviceName,
    required this.serviceDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: kPrimaryColor,
          width: 2.w,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(AssetsData.fix),
              SizedBox(width: 8.w),
              Text(
                serviceName,
                style: TextStyles.textstyle14.copyWith(color: kPrimaryColor),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            serviceDetails,
            style: TextStyles.textstyle12.copyWith(
              color: ColorStyles.blackColor.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
