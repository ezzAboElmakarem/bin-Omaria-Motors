import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../helper/text_styles.dart';

// ignore: must_be_immutable
class CustomRadioTileItem extends StatelessWidget {
  final String title;
  final String imageurl;
  String? groupValue;
  String value;
  final Function(String?)? onChanged;
  final bool selected;
  final Widget? secondaryText;
  //final bool isSelected;
  CustomRadioTileItem({
    super.key,
    required this.title,
    this.groupValue,
    required this.value,
    this.onChanged,
    required this.selected,
    this.secondaryText,
    required this.imageurl,
    // required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: RadioListTile(
        activeColor: Colors.black,
        // tileColor: Colors.grey.withOpacity(0.2),
        contentPadding: EdgeInsets.symmetric(horizontal: 4.w),
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Image.asset(
                imageurl,
              ),
            ),
            Text(
              title,
              // textAlign: TextAlign.right,
              style: TextStyles.textstyle14.copyWith(
                  color: selected
                      ? Colors.black
                      : ColorStyles.blackColor.withOpacity(0.6)),
            ),
          ],
        ),
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        controlAffinity: ListTileControlAffinity.trailing,
        secondary: secondaryText,
      ),
    );
  }
}
