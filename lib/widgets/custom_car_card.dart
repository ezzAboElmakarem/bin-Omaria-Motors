import 'package:bin_omaira_motors/features/car_details/views/car_details_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarCard extends StatelessWidget {
  final bool clickable;
  const CustomCarCard({super.key, required this.clickable});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        clickable ? RouteUtils.navigateTo(const CarDetailsView()) : null;
      },
      child: Container(
        width: 244.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductPrices(),
              SizedBox(height: 4.h),
              Center(child: Image.asset(AssetsData.car)),
              SizedBox(height: 12.h),
              const ProductDetails(),
            ],
          ),
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

class ProductPrices extends StatelessWidget {
  const ProductPrices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${"before".tr()} 99,900 ${'currence'.tr()}',
          style: TextStyles.textstyle8.copyWith(
              color: ColorStyles.hintColor.withOpacity(0.6),
              decoration: TextDecoration.lineThrough),
        ),
        const Spacer(),
        Container(
          width: 86.w,
          height: 32.w,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Center(
            child: Text("${'90,000'} ${'currence'.tr()}",
                style: TextStyles.textstyle10.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
