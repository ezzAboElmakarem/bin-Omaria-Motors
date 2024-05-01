import 'package:bin_omaira_motors/features/sign_in/view/sign_in_view.dart';
import 'package:bin_omaira_motors/features/success_screen/views/success_screen_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NewPassConfirmButton extends StatelessWidget {
  const NewPassConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: 'confirm'.tr(),
      onTap: () {
        RouteUtils.navigateTo(SuccessScreenView(
          image: AssetsData.newPassSuccess,
          text1: 'new_pass_done_title'.tr(),
          text2: 'new_pass_done_subtitle'.tr(),
          widget: const SignInView(),
          textButton: 'back_to_login'.tr(),
        ));
      },
    );
  }
}
