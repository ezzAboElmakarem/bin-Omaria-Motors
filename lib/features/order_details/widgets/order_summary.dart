import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            PriceCell(
              name: "car_price".tr(),
              price: "999 ",
              showDivider: true,
            ),
            PriceCell(
              name: "value_added_tax".tr(),
              price: "999 ",
              showDivider: true,
            ),
            PriceCell(
              name: "registration_fee".tr(),
              price: "999 ",
              showDivider: true,
            ),
            PriceCell(
              name: "delivery_fee".tr(),
              price: "999 ",
              showDivider: true,
            ),
            PriceCell(
              name: "total_price".tr(),
              price: "999 ",
              showDivider: true,
            ),
            PriceCell(
              name: "deposit".tr(),
              price: "999 ",
              showDivider: true,
            ),
            PriceCell(
              name: "amount_remaining".tr(),
              price: "999 ",
              showDivider: false,
            ),
          ],
        ),
      ),
    );
  }
}

class PriceCell extends StatelessWidget {
  final String name, price;
  final bool showDivider;
  const PriceCell({
    super.key,
    required this.name,
    required this.price,
    required this.showDivider,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              name,
              style: TextStyles.textstyle12
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            const Spacer(),
            Text(
              "$price ${"currence".tr()}",
              style:
                  TextStyles.textstyle12.copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
        showDivider
            ? Divider(
                color: Colors.grey.withOpacity(0.4),
                height: 18.h,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
