import 'dart:developer';

import 'package:bin_omaira_motors/features/purchase/widgets/cities_ddrop_down.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_radio_title.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondStepContent extends StatefulWidget {
  const SecondStepContent({
    super.key,
  });

  @override
  State<SecondStepContent> createState() => _SecondStepContentState();
}

class _SecondStepContentState extends State<SecondStepContent> {
  String selectedOption = '';

  List<Map<String, dynamic>> typesOptions = [
    {
      "id": 0,
      "title": "branch".tr(),
      "image_url": AssetsData.building,
    },
    {
      "id": 1,
      "title": "home_delivery".tr(),
      "image_url": AssetsData.door,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("personal_details".tr(), style: TextStyles.textstyle16),
          SizedBox(height: 24.h),
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            hint: "full_name".tr(),
            hintColor: ColorStyles.blackColor.withOpacity(0.6),
            borderColor: Colors.grey,
            suffixIcon: Icon(
              Icons.person,
              color: ColorStyles.blackColor.withOpacity(0.6),
            ),
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            type: TextInputType.phone,
            hint: "phone_number".tr(),
            hintColor: ColorStyles.blackColor.withOpacity(0.6),
            borderColor: Colors.grey,
            suffixIcon: Icon(
              Icons.phone,
              color: ColorStyles.blackColor.withOpacity(0.6),
            ),
          ),
          SizedBox(height: 32.h),
          Text("shipping_details".tr(), style: TextStyles.textstyle16),
          SizedBox(height: 24.h),
          SizedBox(
            height: 160.h,
            width: double.infinity,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CustomRadioTileItem(
                imageurl: typesOptions[index]["image_url"],
                title: typesOptions[index]["title"],
                groupValue: selectedOption,
                value: typesOptions[index]["id"].toString(),
                onChanged: (value) {
                  setState(
                    () {
                      selectedOption = value!;
                      log(value);
                    },
                  );
                },
                selected:
                    selectedOption == typesOptions[index]['id'].toString(),
              ),
              itemCount: typesOptions.length,
            ),
          ),
          const CitiesDropDown(),
          SizedBox(height: 16.h),
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            hint: "detailed_adress".tr(),
            hintColor: ColorStyles.blackColor.withOpacity(0.6),
            borderColor: Colors.grey,
            suffixIcon: Icon(
              Icons.location_on,
              color: ColorStyles.blackColor.withOpacity(0.6),
              size: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
