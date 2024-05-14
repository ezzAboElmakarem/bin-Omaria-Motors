import 'package:bin_omaira_motors/features/register/widgets/accept_terms_widget.dart';
import 'package:bin_omaira_motors/features/register/widgets/register_button.dart';
import 'package:bin_omaira_motors/features/register/widgets/register_forms.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:bin_omaira_motors/widgets/question_and_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        context: context,
        appBarHeight: 34.h,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsData.loginImage,
                  height: 180.h,
                  width: double.infinity,
                ),
                Text(
                  'signup'.tr(),
                  style: TextStyles.textstyle24.copyWith(color: Colors.white),
                ),
                // SizedBox(height: 20.h),
                // Text(
                //   "you_have_been_missed".tr(),
                //   style: TextStyles.textstyle12.copyWith(
                //       color: Colors.grey, fontWeight: FontWeight.normal),
                // ),
                SizedBox(height: 36.h),
                const RegisterForms(),
                SizedBox(height: 24.h),
                const AcceptTermsWidget(),
                SizedBox(height: 16.h),
                const RegisterButton(),
                SizedBox(height: 40.h),
                QuestionAndButton(
                  text: "signin".tr(),
                  questionText: 'have_account'.tr(),
                  onTap: () {},
                  textColor: ColorStyles.darkgreyColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
