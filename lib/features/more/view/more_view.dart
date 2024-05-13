import 'package:bin_omaira_motors/features/about_us/views/about_us_view.dart';
import 'package:bin_omaira_motors/features/after_sale_services/views/sale_services.dart';
import 'package:bin_omaira_motors/features/change_language/views/change_lang_view.dart';
import 'package:bin_omaira_motors/features/contact_us/views/contact_us_view.dart';
import 'package:bin_omaira_motors/features/faq/views/faq_view.dart';
import 'package:bin_omaira_motors/features/more/widgets/more_section_item.dart';
import 'package:bin_omaira_motors/features/my_account/views/my_account_view.dart';
import 'package:bin_omaira_motors/features/our_branches/views/our_branches_view.dart';
import 'package:bin_omaira_motors/features/terms_and_condtions/views/terms_view.dart';
import 'package:bin_omaira_motors/features/usage_policy/views/usage_policy_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        leading: const SizedBox.shrink(),
        title: "more".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: Column(
            children: [
              MoreSectionItem(
                sectionTitle: "my_account".tr(),
                sectionImage: AssetsData.user,
                onTap: () {
                  RouteUtils.navigateTo(const MyAccountView());
                },
                navigationButton: true,
              ),
              SizedBox(
                height: 16.h,
              ),
              MoreSectionItem(
                sectionTitle: "change_language".tr(),
                sectionImage: AssetsData.language,
                onTap: () {
                  // log('message');
                  RouteUtils.navigateTo(const ChangeLanguage());
                },
                navigationButton: true,
              ),
              SizedBox(
                height: 16.h,
              ),
              MoreSectionItem(
                sectionTitle: "about_us".tr(),
                sectionImage: AssetsData.logoIcon,
                onTap: () {
                  RouteUtils.navigateTo(const AboutUsView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "after_sale_services".tr(),
                sectionImage: AssetsData.services,
                onTap: () {
                  RouteUtils.navigateTo(const AfterSaleServicesView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "our_branches".tr(),
                sectionImage: AssetsData.branches,
                onTap: () {
                  RouteUtils.navigateTo(const OurBranchesView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "terms_&_Conditions".tr(),
                sectionImage: AssetsData.terms,
                onTap: () {
                  RouteUtils.navigateTo(const TermsAndConditionsView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "usage_policy".tr(),
                sectionImage: AssetsData.policy,
                onTap: () {
                  RouteUtils.navigateTo(const UsagePolicyView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "faqs".tr(),
                sectionImage: AssetsData.faqs,
                onTap: () {
                  RouteUtils.navigateTo(const FaqView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "contact_us".tr(),
                sectionImage: AssetsData.bluePhone,
                onTap: () {
                  RouteUtils.navigateTo(const ContactUsView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 22.h),
              MoreSectionItem(
                isLogOut: true,
                sectionTitle: "log_out".tr(),
                sectionImage: AssetsData.logOut,
                backgroundColor: Colors.red.withOpacity(0.1),
                textColor: ColorStyles.redColor,
                iconColor: ColorStyles.redColor,
                onTap: () {},
                navigationButton: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
