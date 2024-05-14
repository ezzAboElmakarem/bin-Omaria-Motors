import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:bin_omaira_motors/widgets/custom_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaveChangesButton extends StatelessWidget {
  const SaveChangesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: "save_changes".tr(),
      buttonColor: kPrimaryColor.withOpacity(0.1),
      borderColor: kPrimaryColor.withOpacity(0.1),
      textColor: kPrimaryColor,
      onTap: () {
        cutsomDialog(
          context: context,
          titleColor: Colors.white,
          verticalPadding: 160.h,
          body: Column(
            children: [
              Image.asset(
                AssetsData.successImage,
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "saved_successfully".tr(),
                style: TextStyles.textstyle16
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Text(
                "changes_Saved".tr(),
                style: TextStyles.textstyle14
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
