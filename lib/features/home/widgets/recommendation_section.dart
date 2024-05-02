import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_product_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            children: [
              Text(
                'recommendations'.tr(),
                style: TextStyles.textstyle16.copyWith(),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'see_all'.tr(),
                  style: TextStyles.textstyle12.copyWith(
                      fontWeight: FontWeight.w400, color: kPrimaryColor),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        // const CustomProductCard(),
        SizedBox(
          height: 230.h,
          // width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const CustomProductCard(),
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: 14),
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}
