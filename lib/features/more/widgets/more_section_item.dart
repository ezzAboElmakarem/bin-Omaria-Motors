import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../helper/text_styles.dart';

class MoreSectionItem extends StatelessWidget {
  const MoreSectionItem({
    super.key,
    required this.sectionTitle,
    required this.sectionImage,
    required this.onTap,
    required this.navigationButton,
    this.isLogOut,
    this.backgroundColor,
    this.textColor,
    this.iconColor,
  });
  final String sectionTitle;
  final bool? isLogOut;
  final String sectionImage;
  final bool navigationButton;
  final void Function()? onTap;
  final Color? backgroundColor, textColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isLogOut == null ? ColorStyles.shadowColor : backgroundColor,
          borderRadius: BorderRadius.circular(14),
        ),
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
        child: Row(
          children: [
            Image.asset(
              sectionImage,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 6.w,
            ),
            SizedBox(
              width: 140.w,
              child: Text(
                sectionTitle,
                style: TextStyles.textstyle14.copyWith(
                    color: isLogOut == null ? Colors.black : textColor),
              ),
            ),
            const Spacer(),
            navigationButton
                ? Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 20.sp,
                    color: isLogOut == null ? Colors.black : iconColor,
                  )
                : const Text(' '),
          ],
        ),
      ),
    );
  }
}
