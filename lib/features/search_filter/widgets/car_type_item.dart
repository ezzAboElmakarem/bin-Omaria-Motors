import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarTypeItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CarTypeItem({
    Key? key,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90.h,
        width: 124.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? kPrimaryColor : Colors.grey.withOpacity(0.3),
          ),
          image: const DecorationImage(
            image: AssetImage(AssetsData.bentleyLogo),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'Bentley',
            style: TextStyles.textstyle14.copyWith(
              fontWeight: FontWeight.normal,
              color: ColorStyles.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
