import 'package:bin_omaira_motors/features/orders/views/orders_view.dart';
import 'package:bin_omaira_motors/features/success_screen/views/success_screen_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyAccoountView extends StatelessWidget {
  const MyAccoountView({super.key});

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
      body: SuccessScreenView(
        image: AssetsData.flyingCar,
        texttitle: "purchase_success_title".tr(),
        textSubtitle: "purchase_success_subtitle".tr(),
        textButton: "my_orders".tr(),
        backgroundColor: Colors.white,
        textTitleColor: Colors.black,
        textSubtitleColor: Colors.black.withOpacity(0.7),
        buttonColor: kPrimaryColor.withOpacity(0.1),
        textButtonColor: kPrimaryColor,
        ontap: () {
          RouteUtils.navigateTo(const OrdersView());
        },
        navTo: const OrdersView(),
      ),
    );
  }
}
