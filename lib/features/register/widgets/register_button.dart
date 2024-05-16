import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
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
          CustomNavigator.push(Routes.SUCCESSREGISTER);

          // RouteUtils.navigateTo(
          //   SuccessScreenView(
          //       image: AssetsData.successfullRegister,
          //       texttitle: "successfully_registered".tr(),
          //       textSubtitle: "successfully_registered_subtitle".tr(),
          //       navTo: const NavBarView(),
          //       textButton: 'continue'.tr()),
          // );
        });
  }
}
