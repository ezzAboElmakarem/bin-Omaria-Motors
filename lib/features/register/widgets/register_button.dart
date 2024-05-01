import 'package:bin_omaira_motors/features/success_screen/views/success_screen_view.dart';
import 'package:bin_omaira_motors/features/welcome_Screen/view/welcome_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        buttonText: 'signup'.tr(),
        onTap: () {
          RouteUtils.navigateTo(
            SuccessScreenView(
                image: AssetsData.successfullRegister,
                text1: "successfully_registered".tr(),
                text2: "successfully_registered_subtitle".tr(),
                widget: const WelcomeView(),
                textButton: 'continue'.tr()),
          );
        });
  }
}
