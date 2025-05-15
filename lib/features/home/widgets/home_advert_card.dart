import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAdvertCard extends StatelessWidget {
  const HomeAdvertCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        width: double.infinity,
        // height: 176.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage(AssetsData.cardImage))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'advet_title'.tr(),
                style: TextStyles.textstyle20.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                width: 136.w,
                child: Text(
                  'advert_body_text'.tr(),
                  style: TextStyles.textstyle12.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 40.h,
                width: 106.w,
                child: CustomButton(
                  buttonText: 'read_me'.tr(),
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
