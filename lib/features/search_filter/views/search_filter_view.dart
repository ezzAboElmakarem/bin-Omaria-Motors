import 'package:bin_omaira_motors/features/search_filter/widgets/car_type_item.dart';
import 'package:bin_omaira_motors/features/search_filter/widgets/filter_forms.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilterView extends StatefulWidget {
  const SearchFilterView({Key? key}) : super(key: key);

  @override
  SearchFilterViewState createState() => SearchFilterViewState();
}

class SearchFilterViewState extends State<SearchFilterView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "search_filter".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Text(
                    'car_type'.tr(),
                    style: TextStyles.textstyle16,
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 120.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => CarTypeItem(
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 14.w),
                    itemCount: 14,
                  ),
                ),
                SizedBox(height: 24.h),
                const SearchFilterForms(),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                        buttonText: 'cofirm_filter'.tr(),
                        onTap: () {},
                      ),
                      SizedBox(height: 16.h),
                      CustomButton(
                        buttonText: 'clear_filter'.tr(),
                        buttonColor: Colors.grey[200],
                        textColor: ColorStyles.blackColor,
                        onTap: () {},
                      ),
                      SizedBox(height: 34.h),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
