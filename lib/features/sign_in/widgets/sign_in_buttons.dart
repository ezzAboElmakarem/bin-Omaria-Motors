import 'package:bin_omaira_motors/features/forget_password/views/forget_password_view.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:bin_omaira_motors/widgets/question_and_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiginInButtons extends StatelessWidget {
  const SiginInButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          buttonText: 'signin'.tr(),
          onTap: () {},
        ),
        SizedBox(
          height: 26.h,
        ),
        TextButton(
          onPressed: () {
            RouteUtils.navigateTo(const ForgetPassView());
          },
          child: Text(
            'forget_password?'.tr(),
            style: TextStyles.textstyle14.copyWith(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(height: 40.h),
        QuestionAndButton(
          questionText: 'no_account'.tr(),
          text: "signup".tr(),
          onTap: () {},
        ),
        // CustomTextButton(text: 'no_account'.tr(), onTap: () {})
      ],
    );
  }
}
