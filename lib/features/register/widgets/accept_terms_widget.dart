import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../helper/text_styles.dart';

class AcceptTermsWidget extends StatefulWidget {
  const AcceptTermsWidget({super.key});

  @override
  State<AcceptTermsWidget> createState() => _AcceptTermsWidgetState();
}

class _AcceptTermsWidgetState extends State<AcceptTermsWidget> {
  bool ischecked_1 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          activeColor: kPrimaryColor,
          overlayColor: MaterialStateProperty.all<Color>(kPrimaryColor),
          shape: const CircleBorder(),
          value: ischecked_1,
          onChanged: (value) {
            setState(() {
              ischecked_1 = value!;
            });
          },
        ),
        Text(
          'i_agree'.tr(),
          style: TextStyles.textstyle12.copyWith(
            color: ColorStyles.darkgreyColor,
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        GestureDetector(
          onTap: () {
            // RouteUtils.navigateTo(const NewLoginScreenView());
          },
          child: Text("terms_and_conditions".tr(),
              style: TextStyles.textstyle12.copyWith(
                color: ColorStyles.darkgreyColor,
                decoration: TextDecoration.underline,
                decorationThickness: 3.0,
                decorationColor: ColorStyles.darkgreyColor,
              )),
        ),
      ],
    );
  }
}
