import 'package:bin_omaira_motors/features/change_password/widgets/change_pass_button.dart';
import 'package:bin_omaira_motors/features/change_password/widgets/change_pass_forms.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassView extends StatelessWidget {
  const ChangePassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "change_password".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
        child: Column(
          children: [
            const ChangePassForms(),
            const Spacer(),
            const ChangePassButton(),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
