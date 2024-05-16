import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: 'confirm'.tr(),
      onTap: () {
        CustomNavigator.push(Routes.NEWPASSWORD);

        // RouteUtils.navigateTo(const NewPasswordView());
      },
    );
  }
}
