import 'package:bin_omaira_motors/features/home/widgets/home_advert_card.dart';
import 'package:bin_omaira_motors/features/home/widgets/home_search_field.dart';
import 'package:bin_omaira_motors/features/home/widgets/recommendation_section.dart';
import 'package:bin_omaira_motors/features/home/widgets/welcome_row_widget.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          context: context, appBarColor: Colors.white, appBarHeight: 10.h),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.h),
              const WelcomeRow(),
              SizedBox(
                height: 24.h,
              ),
              const HomeSearchField(),
              SizedBox(
                height: 24.h,
              ),
              const HomeAdvertCard(),
              SizedBox(
                height: 34.h,
              ),
              const RecommendationSection(),
            ],
          ),
        ),
      ),
    );
  }
}
