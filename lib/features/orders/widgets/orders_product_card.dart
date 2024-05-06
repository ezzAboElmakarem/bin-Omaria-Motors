import 'package:bin_omaira_motors/features/order_details/views/order_details_view.dart';
import 'package:bin_omaira_motors/features/orders/widgets/accepted_state_widget.dart';
import 'package:bin_omaira_motors/features/orders/widgets/declined_state_widget.dart';
import 'package:bin_omaira_motors/features/orders/widgets/new_purchase_widget.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrderProductCard extends StatelessWidget {
  const CustomOrderProductCard({super.key, this.orderState});
  final String? orderState;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        RouteUtils.navigateTo(OrderDetailsView(
          orderState: "accepted_purchase".tr(),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
              child: Column(
                children: [
                  ProductState(
                    orderState: orderState,
                  ),
                  SizedBox(height: 4.h),
                  Center(child: Image.asset(AssetsData.car)),
                  SizedBox(height: 12.h),
                  const ProductDetails(),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
            const OrderNumberContainer(),
          ],
        ),
      ),
    );
  }
}

class OrderNumberContainer extends StatelessWidget {
  const OrderNumberContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: "${'order_id'.tr()} : ",
                  style: TextStyles.textstyle12
                      .copyWith(color: ColorStyles.blackColor),
                ),
                TextSpan(
                  text: '# 12585147',
                  style: TextStyles.textstyle12.copyWith(color: Colors.grey),
                ),
              ]),
            ),
            const Spacer(),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: "${'car_number'.tr()} : ",
                  style: TextStyles.textstyle12
                      .copyWith(color: ColorStyles.blackColor),
                ),
                TextSpan(
                  text: '# 12585147',
                  style: TextStyles.textstyle12.copyWith(color: Colors.grey),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.w,
          height: 44.w,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Center(
            child: Image.asset(
              AssetsData.tesla2,
              height: 33.h,
              width: 33.w,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tesla 2019 Model 3',
              style: TextStyles.textstyle14,
            ),
            Text(
              '2022',
              style: TextStyles.textstyle12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.4)),
            ),
          ],
        ),
      ],
    );
  }
}

class ProductState extends StatelessWidget {
  final String? orderState;
  const ProductState({
    super.key,
    this.orderState,
  });

  @override
  Widget build(BuildContext context) {
    return orderState == "accepted_purchase".tr()
        ? const AcceptedState()
        : orderState == "declined_reservation".tr()
            ? const DeclinedState()
            : const NewPurchaseState();
  }
}
