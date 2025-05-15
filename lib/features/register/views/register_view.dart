import 'package:bin_omaira_motors/core/app_event.dart';
import 'package:bin_omaira_motors/core/app_state.dart';
import 'package:bin_omaira_motors/features/register/bloc/register_bloc.dart';
import 'package:bin_omaira_motors/features/register/widgets/accept_terms_widget.dart';
import 'package:bin_omaira_motors/features/register/widgets/register_button.dart';
import 'package:bin_omaira_motors/features/register/widgets/register_forms.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: BlocListener<RegisterBloc, AppState>(
        listener: (context, state) {
          if (state is Done) {
            BlocProvider.of<RegisterBloc>(context).add(Reset());
          }
        },
        child: SingleChildScrollView(
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
                  const RegisterButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
