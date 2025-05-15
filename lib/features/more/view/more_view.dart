import 'package:bin_omaira_motors/features/more/widgets/more_section_item.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
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
                  CustomNavigator.push(Routes.MYACCOUNT);

                  // RouteUtils.navigateTo(const MyAccountView());
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
                  CustomNavigator.push(Routes.CHNAGELANGUAGE);

                  // RouteUtils.navigateTo(const ChangeLanguageView());
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
                  CustomNavigator.push(Routes.ABOUTUS);

                  // RouteUtils.navigateTo(const AboutUsView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "after_sale_services".tr(),
                sectionImage: AssetsData.services,
                onTap: () {
                  CustomNavigator.push(Routes.AFTERSALESERVICE);

                  // RouteUtils.navigateTo(const AfterSaleServicesView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "our_branches".tr(),
                sectionImage: AssetsData.branches,
                onTap: () {
                  CustomNavigator.push(Routes.OURBRANCHES);

                  // RouteUtils.navigateTo(const OurBranchesView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "terms_&_Conditions".tr(),
                sectionImage: AssetsData.terms,
                onTap: () {
                  CustomNavigator.push(Routes.TERMSANDCONDITIONS);

                  // RouteUtils.navigateTo(const TermsAndConditionsView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "usage_policy".tr(),
                sectionImage: AssetsData.policy,
                onTap: () {
                  CustomNavigator.push(Routes.USAGEPOLICY);

                  // RouteUtils.navigateTo(const UsagePolicyView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "faqs".tr(),
                sectionImage: AssetsData.faqs,
                onTap: () {
                  CustomNavigator.push(Routes.FAQ);

                  // RouteUtils.navigateTo(const FaqView());
                },
                navigationButton: true,
              ),
              SizedBox(height: 2.h),
              MoreSectionItem(
                sectionTitle: "contact_us".tr(),
                sectionImage: AssetsData.bluePhone,
                onTap: () {
                  CustomNavigator.push(Routes.CONTACTUS);

                  // RouteUtils.navigateTo(const ContactUsView());
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
