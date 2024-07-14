import 'package:bin_omaira_motors/features/forget_password/widgets/forget_pass_button.dart';
import 'package:bin_omaira_motors/features/forget_password/widgets/forget_pass_form.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        context: context,
      ),
      // appBar: customAppBar(context: context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'forget_password'.tr(),
                style: TextStyles.textstyle24.copyWith(color: Colors.white),
              ),
              SizedBox(height: 8.h),
              Text(
                'we_will_send_a_code'.tr(),
                style: TextStyles.textstyle12
                    .copyWith(color: ColorStyles.darkgreyColor),
              ),
              SizedBox(height: 40.h),
              const ForgetPassForm(),
              SizedBox(height: 30.h),
              const ForgetPassButton(),
            ],
          ),
        ),
      ),
    );
  }
}
