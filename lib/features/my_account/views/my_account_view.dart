import 'package:bin_omaira_motors/features/my_account/widgets/my_account_buttons.dart';
import 'package:bin_omaira_motors/features/my_account/widgets/my_account_forms.dart';
import 'package:bin_omaira_motors/features/my_account/widgets/my_account_image.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "my_account".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: Column(
            children: [
              const MyAccountImage(),
              SizedBox(height: 32.h),
              const MyAccountForms(),
              const MyAccountButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
