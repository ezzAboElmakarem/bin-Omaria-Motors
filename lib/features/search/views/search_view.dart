import 'package:bin_omaira_motors/features/home/widgets/recommendation_section.dart';
import 'package:bin_omaira_motors/features/search/widgets/search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        context: context,
        appBarHeight: 120.h,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 32.h,
          ),
          const RecommendationSection(),
        ],
      ),
    );
  }
}
