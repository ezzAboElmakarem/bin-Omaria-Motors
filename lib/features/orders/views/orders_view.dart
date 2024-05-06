import 'package:bin_omaira_motors/features/orders/widgets/orders_product_card.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "orders".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(24.h),
            child: ListView.separated(
                itemBuilder: (context, index) => CustomOrderProductCard(
                    // orderState: "declined_reservation".tr(),
                    ),
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemCount: 6)),
      ),
    );
  }
}
