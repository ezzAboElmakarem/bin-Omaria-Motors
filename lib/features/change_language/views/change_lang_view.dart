import 'dart:developer';

import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:bin_omaira_motors/widgets/custom_radio_title.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
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
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "change_lang".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
