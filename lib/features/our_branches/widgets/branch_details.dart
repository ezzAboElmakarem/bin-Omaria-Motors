import 'package:bin_omaira_motors/features/our_branches/widgets/info_row.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BranchDetails extends StatelessWidget {
  final String branchName, email, address, phone, workTime;
  const BranchDetails({
    super.key,
    required this.branchName,
    required this.email,
    required this.address,
    required this.phone,
    required this.workTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
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
          Text(
            branchName,
            style: TextStyles.textstyle14.copyWith(color: kPrimaryColor),
          ),
          SizedBox(height: 14.h),
          InfoRow(
            icon: Icons.location_pin,
            text: address,
          ),
          SizedBox(height: 12.h),
          InfoRow(
            icon: Icons.phone,
            text: phone,
          ),
          SizedBox(height: 12.h),
          InfoRow(
            icon: Icons.access_time_filled,
            text: workTime,
          ),
          SizedBox(height: 12.h),
          InfoRow(
            icon: Icons.email,
            text: email,
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}
