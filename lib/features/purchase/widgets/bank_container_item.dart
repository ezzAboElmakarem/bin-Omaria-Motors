import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BankContainerItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  const BankContainerItem({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200.w,
        // height: 110.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(
            color: isSelected ? kPrimaryColor : Colors.grey.withOpacity(0.3),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              Image.asset(AssetsData.nationalBank),
              SizedBox(height: 12.h),
              Text(
                "National Commercial Bank",
                style: TextStyles.textstyle12.copyWith(
                  color: ColorStyles.blackColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
