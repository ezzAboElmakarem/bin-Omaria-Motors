import 'package:bin_omaira_motors/features/purchase/widgets/banks_listview.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/deposite_section.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/upload_forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdStepContent extends StatelessWidget {
  const ThirdStepContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DepositeSection(),
        SizedBox(height: 16.h),
        const BanksListView(),
        SizedBox(height: 32.h),
        const UploadsForms(),
      ],
    );
  }
}
