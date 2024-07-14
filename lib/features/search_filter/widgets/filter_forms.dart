import 'package:bin_omaira_motors/features/search_filter/widgets/colors_drop_down.dart';
import 'package:bin_omaira_motors/features/search_filter/widgets/model_drop_down.dart';
import 'package:bin_omaira_motors/features/search_filter/widgets/year_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilterForms extends StatelessWidget {
  const SearchFilterForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ModelsDropdown(),
          SizedBox(height: 24.h),
          const YearDropdown(),
          SizedBox(height: 24.h),
          const ColorDropdown(),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
