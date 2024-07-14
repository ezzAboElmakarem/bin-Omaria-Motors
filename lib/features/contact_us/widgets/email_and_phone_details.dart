import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPhoneDetails extends StatelessWidget {
  const EmailAndPhoneDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const Icon(Icons.phone, color: kPrimaryColor),
            SizedBox(
              height: 14.h,
            ),
            Text(
              "contact_number".tr(),
              style:
                  TextStyles.textstyle14.copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "+ 966 00000 00000",
              style: TextStyles.textstyle10.copyWith(
                color: ColorStyles.blackColor.withOpacity(0.5),
              ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 78.h,
          child: VerticalDivider(
            width: 2.w,
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        const Spacer(),
        Column(
          children: [
            const Icon(Icons.email, color: kPrimaryColor),
            SizedBox(
              height: 14.h,
            ),
            Text(
              "email_address".tr(),
              style:
                  TextStyles.textstyle14.copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "BinOmaira@gmail.com",
              style: TextStyles.textstyle10.copyWith(
                color: ColorStyles.blackColor.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
