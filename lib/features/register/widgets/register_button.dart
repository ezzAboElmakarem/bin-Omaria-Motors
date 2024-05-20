import 'dart:developer';

import 'package:bin_omaira_motors/core/app_event.dart';
import 'package:bin_omaira_motors/core/app_state.dart';
import 'package:bin_omaira_motors/features/register/bloc/register_bloc.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:bin_omaira_motors/widgets/question_and_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterButtons extends StatelessWidget {
  const RegisterButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = RegisterBloc.get(context);

    return Column(
      children: [
        BlocBuilder<RegisterBloc, AppState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(color: kPrimaryColor),
              );
            } else if (state is Error) {
              return CustomButton(
                  buttonText: 'signup'.tr(),
                  onTap: () {
                    bloc.add(Click());
                    log("x");
                  });
            } else if (state is Done) {
              return CustomButton(
                  buttonText: 'signup'.tr(),
                  onTap: () {
                    bloc.add(Click());
                    log("y");
                  });
            } else if (state is Start) {
              return CustomButton(
                  buttonText: 'signup'.tr(),
                  onTap: () {
                    bloc.add(Click());
                    log("else");
                  });
            } else
              return CustomButton(
                  buttonText: 'signup start'.tr(),
                  onTap: () {
                    bloc.add(Click());
                    log("start else");
                  });
          },
        ),
        SizedBox(height: 40.h),
        QuestionAndButton(
          text: "signin".tr(),
          questionText: 'have_account'.tr(),
          onTap: () {},
          textColor: ColorStyles.darkgreyColor,
        ),
      ],
    );
  }
}
