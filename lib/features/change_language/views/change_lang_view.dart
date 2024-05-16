import 'dart:developer';

import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

class ChangeLanguageView extends StatefulWidget {
  const ChangeLanguageView({super.key});

  @override
  State<ChangeLanguageView> createState() => _ChangeLanguageViewState();
}

class _ChangeLanguageViewState extends State<ChangeLanguageView> {
  late String _selectedLocale;
  // ValueNotifier<int> selectedValue = ValueNotifier<int>(0);

  late final GetStorage _storage;

  @override
  void initState() {
    _storage = GetStorage();
    _selectedLocale =
        _storage.read('selectedLocale') ?? (CustomNavigator.isAR ? "ar" : "en");
    super.initState();
  }

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
            Container(
              margin: EdgeInsets.symmetric(vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: RadioListTile(
                activeColor: kPrimaryColor,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Row(
                  children: [
                    Opacity(
                        opacity: _selectedLocale == "ar" ? 1 : 0.3,
                        child: Image.asset(AssetsData.enFlag)),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text("arabic".tr()),
                  ],
                ),
                value: 0,
                groupValue: _selectedLocale == "ar" ? 0 : 1,
                onChanged: (value) {
                  setState(() {
                    _selectedLocale = 'ar';
                    _storage.write('selectedLocale', 'ar');
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: RadioListTile(
                activeColor: kPrimaryColor,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Row(
                  children: [
                    Opacity(
                        opacity: _selectedLocale == "en" ? 1 : 0.3,
                        child: Image.asset(AssetsData.enFlag)),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text("english".tr()),
                  ],
                ),
                value: 1,
                groupValue: _selectedLocale == "en" ? 1 : 0,
                onChanged: (value) {
                  setState(() {
                    _selectedLocale = 'en';
                    _storage.write('selectedLocale', 'en');
                  });
                },
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomButton(
              buttonText: "confirm".tr(),
              onTap: () {
                setState(() {
                  context.setLocale(Locale(_selectedLocale));
                  _storage.write('selectedLocale', _selectedLocale);

                  final rootElement =
                      WidgetsFlutterBinding.ensureInitialized().rootElement!;
                  WidgetsBinding.instance.buildOwner!.reassemble(rootElement);
                  log(_selectedLocale);
                  // RouteUtils.navigateAndPopAll(const SplashView());
                });
              },
            ),
            // CustomRadioTileItem(
            //         imageurl: AssetsData.enFlag,
            //         title: "arabic".tr(),
            //         groupValue: selectedOption,
            //         value: "0",
            //         onChanged: (value) {
            //             setState(() {
            //         _selectedLocale = 'ar';
            //         _storage.write('selectedLocale', 'ar');
            //       });
            //         },
            //         selected:
            //             selectedOption == typesOptions[index]['id'].toString(),
            //       ),

            // SizedBox(
            //   height: 160.h,
            //   width: double.infinity,
            //   child: ListView.builder(
            //     physics: const NeverScrollableScrollPhysics(),
            //     itemBuilder: (context, index) => CustomRadioTileItem(
            //       imageurl: typesOptions[index]["image_url"],
            //       title: typesOptions[index]["title"],
            //       groupValue: selectedOption,
            //       value: typesOptions[index]["id"].toString(),
            //       onChanged: (value) {
            //         setState(
            //           () {
            //             selectedOption = value!;
            //             log(value);
            //           },
            //         );
            //       },
            //       selected:
            //           selectedOption == typesOptions[index]['id'].toString(),
            //     ),
            //     itemCount: typesOptions.length,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
