import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
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
        CustomNavigator.push(Routes.SUCCESSPASSWORD);

        // RouteUtils.navigateTo(SuccessScreenView(
        //   image: AssetsData.newPassSuccess,
        //   texttitle: 'new_pass_done_title'.tr(),
        //   textSubtitle: 'new_pass_done_subtitle'.tr(),
        //   navTo: const SignInView(),
        //   textButton: 'back_to_login'.tr(),
        // ));
      },
    );
  }
}
