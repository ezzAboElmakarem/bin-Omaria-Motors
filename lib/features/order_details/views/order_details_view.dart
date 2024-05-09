import 'package:bin_omaira_motors/features/order_details/widgets/attatchments.dart';
import 'package:bin_omaira_motors/features/order_details/widgets/cause_of_reject_widget.dart';
import 'package:bin_omaira_motors/widgets/order_summary.dart';
import 'package:bin_omaira_motors/features/orders/widgets/orders_product_card.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsView extends StatelessWidget {
  final String? orderState;
  const OrderDetailsView({super.key, this.orderState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "order_details".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'car_details'.tr(),
                style: TextStyles.textstyle16
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomOrderProductCard(orderState: orderState),
              SizedBox(
                height: 24.h,
              ),
              const OrderSummary(),
              SizedBox(
                height: 26.h,
              ),
              orderState == "accepted_purchase".tr()
                  ? const Attatchments()
                  : orderState == "declined_reservation".tr()
                      ? const CauseOfReject()
                      : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
