import 'package:bin_omaira_motors/features/search_filter/widgets/cars_types_list_view.dart';
import 'package:bin_omaira_motors/features/search_filter/widgets/filter_forms.dart';
import 'package:bin_omaira_motors/features/search_filter/widgets/search_filter_buttons.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilterView extends StatelessWidget {
  const SearchFilterView({
    super.key,
  });

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
                const CarsTypesListView(),
                SizedBox(height: 24.h),
                const SearchFilterForms(),
                const SearchFilterButtons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
