import 'package:bin_omaira_motors/features/car_details/widgets/car_details_buttons.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_model_detail.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_photo_slider.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_shortcuts_details.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/description_section.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/measurments_list_view.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "Tesla",
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body:
          // Stack(
          //   children: [
          SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 36.h),
            const CarShortcutsDetails(),
            SizedBox(height: 16.h),
            const CarModel(),
            const CarDetailsSwiper(),
            SizedBox(height: 16.h),
            const DescriptionSection(),
            SizedBox(height: 16.h),
            const MeasurmentsListView(),
            // SizedBox(height: 100.h),
          ],
        ),
      ),

      //   ],
      // ),
      bottomNavigationBar: const CarDetailsButtons(),
    );
  }
}
