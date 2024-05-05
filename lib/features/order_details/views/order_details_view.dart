import 'package:bin_omaira_motors/features/order_details/widgets/order_summary.dart';
import 'package:bin_omaira_motors/features/orders/widgets/orders_product_card.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
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
              const CustomOrderProductCard(),
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

class CauseOfReject extends StatelessWidget {
  const CauseOfReject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.report_gmailerrorred_outlined,
              color: ColorStyles.blackColor,
            ),
            Text(
              "case_of_order_rejection".tr(),
              style:
                  TextStyles.textstyle16.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Container(
          height: 100.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorStyles.greyColor,
              borderRadius: BorderRadius.circular(18)),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, adipiscingse sed do eiusmod tempor incididunt sed.."),
            ),
          ),
        ),
      ],
    );
  }
}

class Attatchments extends StatelessWidget {
  const Attatchments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('attatchments'.tr(),
            style:
                TextStyles.textstyle16.copyWith(color: ColorStyles.blackColor)),
        SizedBox(height: 24.h),
        CustomTextFormField(
          ispassword: false,
          isEnabled: false,
          hint: "receipt".tr(),
          hintColor: Colors.grey,
          // prefixIcon: Image.asset(AssetsData.file1),
          suffixIcon:
              Icon(Icons.file_download_outlined, color: ColorStyles.blackColor),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          ispassword: false,
          isEnabled: false,
          hint: "sale_contract".tr(),
          hintColor: Colors.grey,
          // prefixIcon: Image.asset(AssetsData.file2),
          suffixIcon:
              Icon(Icons.file_download_outlined, color: ColorStyles.blackColor),
        ),
      ],
    );
  }
}
