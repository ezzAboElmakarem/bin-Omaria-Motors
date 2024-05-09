import 'dart:developer';

import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CitiesDropDown extends StatefulWidget {
  const CitiesDropDown({
    super.key,
    //  required this.citiesData,
  });
  // final CitiesAndRegionsModel citiesData;
  @override
  State<CitiesDropDown> createState() => _CitiesDropDownState();
}

class _CitiesDropDownState extends State<CitiesDropDown> {
  String? selectedItem;
  List<String> citiesList = [
    "mans",
    "sam",
    "reha",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        // height: 65.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: DropdownButton<String>(
          dropdownColor: Colors.white,
          iconEnabledColor: ColorStyles.greyColor,
          isExpanded: true,
          hint: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Container(
              height: double.maxFinite,
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: Text(
                "city".tr(),
                style: TextStyles.textstyle14.copyWith(
                  color: ColorStyles.blackColor.withOpacity(0.6),
                ),
              ),
            ),
          ),
          value: selectedItem,
          icon: Transform.rotate(
              angle: 3 / 1.9,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: ColorStyles.blackColor,
                  size: 14.sp,
                ),
              )),
          underline: Container(),
          items: citiesList
              .map((e) => DropdownMenuItem<String>(
                    value: e,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(e),
                    ),
                  ))
              .toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedItem = newValue;
              log(newValue ?? 'no data');
            });
          },
        ),
      ),
    );
  }
}
