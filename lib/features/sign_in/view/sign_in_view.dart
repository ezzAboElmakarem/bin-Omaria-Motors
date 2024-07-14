import 'package:bin_omaira_motors/features/sign_in/widgets/sign_in_buttons.dart';
import 'package:bin_omaira_motors/features/sign_in/widgets/sign_in_forms.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        context: context,
      ),
      // appBar: customAppBar(context: context),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AssetsData.loginImage,
                height: 200.h,
                width: double.infinity,
              ),
              Text(
                'welcome_back'.tr(),
                style: TextStyles.textstyle24.copyWith(color: Colors.white),
              ),
              SizedBox(height: 20.h),
              Text(
                "you_have_been_missed".tr(),
                style: TextStyles.textstyle12.copyWith(
                    color: Colors.grey, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 36.h),
              const SignInForms(),
              SizedBox(height: 24.h),
              const SiginInButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
