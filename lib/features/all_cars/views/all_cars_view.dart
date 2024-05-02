import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:bin_omaira_motors/widgets/custom_product_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCarsView extends StatelessWidget {
  const AllCarsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: 'all_cars'.tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Image.asset(
                AssetsData.whiteFilter,
                width: 26.w,
                height: 30.h,
              ),

              // const Icon(
              //   Icons.tune,
              //   color: Colors.white,
              // )
            ),
          ),
        ],
      ),
      body: ListView.separated(
          // shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const CustomProductCard(),
          separatorBuilder: (context, index) => SizedBox(height: 16.w),
          itemCount: 14),
    );
  }
}
