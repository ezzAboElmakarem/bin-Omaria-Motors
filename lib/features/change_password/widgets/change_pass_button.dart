import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangePassButton extends StatelessWidget {
  const ChangePassButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: "change_password".tr(),
      buttonColor: kPrimaryColor.withOpacity(0.1),
      borderColor: kPrimaryColor.withOpacity(0.1),
      textColor: kPrimaryColor,
      onTap: () {},
    );
  }
}
