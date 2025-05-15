import 'package:bin_omaira_motors/features/our_branches/widgets/branch_details.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurBranchesView extends StatelessWidget {
  const OurBranchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "our_branches".tr(),
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            children: [
              Image.asset(AssetsData.blueLogo),
              SizedBox(height: 32.h),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(vertical: 32.h),
                  itemBuilder: (context, index) => const BranchDetails(
                        branchName: "Bin omira branch 1",
                        address: "5th street, Dammam, saudi arabi",
                        email: "5th street, Dammam, saudi arabi",
                        phone: "5th street, Dammam, saudi arabi",
                        workTime: "5th street, Dammam, saudi arabi",
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: 5),
            ],
          ),
        ),
      ),
    );
  }
}
