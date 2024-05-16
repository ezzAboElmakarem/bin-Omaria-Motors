import 'package:bin_omaira_motors/features/purchase/widgets/purchase_stepper.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseView extends StatelessWidget {
  const PurchaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,

      appBar: CustomAppBar(
        context: context,
        appBarHeight: 60.h,
        title: "purchase".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(color: Colors.white),
        leading: GestureDetector(
            onTap: () {
              CustomNavigator.pop();
            },
            child: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
      ),
      body: const PurchaseStepper(),
    );
  }
}
