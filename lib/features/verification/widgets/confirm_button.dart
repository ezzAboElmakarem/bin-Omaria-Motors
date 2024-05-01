import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/features/new_password/views/new_pass_view.dart';
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
        RouteUtils.navigateTo(const NewPassWordView());
      },
    );
  }
}
