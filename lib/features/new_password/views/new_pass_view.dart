import 'package:bin_omaira_motors/features/new_password/widgets/new_pass_confirm_button.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/features/new_password/widgets/new_pass_forms.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassWordView extends StatelessWidget {
  const NewPassWordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
      ),
      //appBar: customAppBar(context: context),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        child: Column(
          children: [
            Text(
              'create_new_password'.tr(),
              style: TextStyles.textstyle24.copyWith(color: Colors.white),
            ),
            SizedBox(height: 8.h),
            Text(
              'please_enter_the_new_password'.tr(),
              style: TextStyles.textstyle12
                  .copyWith(color: ColorStyles.darkgreyColor),
            ),
            SizedBox(height: 40.h),
            const NewPassForms(),
            SizedBox(height: 30.h),
            const NewPassConfirmButton(),
          ],
        ),
      ),
    );
  }
}
