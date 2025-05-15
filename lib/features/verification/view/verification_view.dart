import 'package:bin_omaira_motors/core/app_event.dart';
import 'package:bin_omaira_motors/core/app_state.dart';
import 'package:bin_omaira_motors/features/verification/bloc/verification_bloc.dart';
import 'package:bin_omaira_motors/features/verification/widgets/confirm_button.dart';
import 'package:bin_omaira_motors/features/verification/widgets/verification_code.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:bin_omaira_motors/widgets/question_and_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        context: context,
      ),
      // appBar: customAppBar(context: context),
      body: BlocProvider(
        create: (context) => VerificationBLoc(),
        child: BlocListener<VerificationBLoc, AppState>(
          listener: (context, state) {
            if (state is Done) {
              BlocProvider.of<VerificationBLoc>(context).add(Reset());
            }
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'verification_code'.tr(),
                  style: TextStyles.textstyle24.copyWith(color: Colors.white),
                ),
                SizedBox(height: 8.h),
                Text(
                  'please_enter_verification_code_sent_to_number'.tr(),
                  style: TextStyles.textstyle12
                      .copyWith(color: ColorStyles.darkgreyColor),
                ),
                SizedBox(height: 40.h),
                const VerificationCodeWidget(),
                SizedBox(height: 30.h),
                const ContinueButton(),
                const Spacer(),
                QuestionAndButton(
                  questionText: "don't_recieve_code".tr(),
                  text: "resend",
                  textColor: ColorStyles.darkgreyColor,
                  onTap: () {},
                ),
                // SizedBox(height: 12.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
