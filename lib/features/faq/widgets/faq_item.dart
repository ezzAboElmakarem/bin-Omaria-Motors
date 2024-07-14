import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaqItem extends StatefulWidget {
  final String question, answer, questionNum;

  const FaqItem(
      {super.key,
      required this.question,
      required this.answer,
      required this.questionNum});
  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // border: Border.all(color: kPrimaryColor, width: 2.w)
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("0${widget.questionNum}"),
                SizedBox(width: 8.w),
                Text(
                  widget.question,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.textstyle14
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                isPressed
                    ? Image.asset(AssetsData.minimize)
                    : Image.asset(
                        AssetsData.bigPlus,
                        height: 18.sp,
                        width: 18.sp,
                      )
              ],
            ),
            isPressed
                ? Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 26.w, vertical: 14.h),
                    child: Text(
                      widget.answer,
                      style: TextStyles.textstyle16.copyWith(
                        fontWeight: FontWeight.normal,
                        color: ColorStyles.blackColor.withOpacity(0.6),
                      ),
                    ),
                  )
                : SizedBox(height: 0.h),
          ],
        ),
      ),
    );
  }
}
