import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_button.dart';
import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_forms.dart';
import 'package:bin_omaira_motors/features/contact_us/widgets/email_and_phone_details.dart';
import 'package:bin_omaira_motors/features/contact_us/widgets/social_shortcuts.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "contact_us".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: Column(
            children: [
              Image.asset(AssetsData.blueLogo),
              SizedBox(
                height: 60.h,
              ),
              const EmailAndPhoneDetails(),
              SizedBox(
                height: 32.h,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.2),
              ),
              SizedBox(
                height: 32.h,
              ),
              const SocialShortcuts(),
              const ContactUsForms(),
              const ContactUsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
