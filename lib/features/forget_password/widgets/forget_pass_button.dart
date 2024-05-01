import 'package:bin_omaira_motors/features/verification/view/verification_view.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgetPassButton extends StatelessWidget {
  const ForgetPassButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: 'send_verifaction_code'.tr(),
      onTap: () {
        RouteUtils.navigateTo(const VerificationView());
      },
    );
  }
}
