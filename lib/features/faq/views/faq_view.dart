import 'package:bin_omaira_motors/features/faq/widgets/faq_item.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaqView extends StatelessWidget {
  const FaqView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "faqs".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Image.asset(AssetsData.blueLogo),
            SizedBox(
              height: 48.h,
            ),
            ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 32.h),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => FaqItem(
                      question: 'How do I get started with E3lank?',
                      answer:
                          'Lorem ipsum dolor sit amet adipis elit, sed do eiusmod tempor incididut labore et dolore magna aliqua. In nisl nisi scelerisque',
                      questionNum: (index + 1).toString(),
                    ),
                separatorBuilder: (context, index) => SizedBox(height: 32.h),
                itemCount: 5),
          ],
        ),
      )),
    );
  }
}
