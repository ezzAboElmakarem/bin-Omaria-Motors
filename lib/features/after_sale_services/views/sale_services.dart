import 'package:bin_omaira_motors/features/after_sale_services/widgets/service_deatils.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AfterSaleServicesView extends StatelessWidget {
  const AfterSaleServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: "after_sale_services".tr(),
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
              ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(vertical: 32.h),
                  itemBuilder: (context, index) => const ServiceDetails(
                        serviceName: "service 1",
                        serviceDetails:
                            "Lorem ipsum dolor sit amet, adipiscing elit, se sed do eiusmod tempor incididunt sed do..",
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: 7),
            ],
          ),
        ),
      ),
    );
  }
}
