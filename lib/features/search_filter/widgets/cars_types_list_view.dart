import 'package:bin_omaira_motors/features/search_filter/widgets/car_type_item.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarsTypesListView extends StatefulWidget {
  const CarsTypesListView({super.key});

  @override
  State<CarsTypesListView> createState() => _CarsTypesListViewState();
}

class _CarsTypesListViewState extends State<CarsTypesListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
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
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
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
      ],
    );
  }
}
