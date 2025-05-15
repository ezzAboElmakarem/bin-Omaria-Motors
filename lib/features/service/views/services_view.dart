import 'package:bin_omaira_motors/features/service/widgets/service_description.dart';
import 'package:bin_omaira_motors/features/service/widgets/service_image.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceView extends StatelessWidget {
  final String serviceName, serviceDetails;
  // final Map<String, dynamic> service;
  const ServiceView({
    super.key,
    required this.serviceName,
    required this.serviceDetails,
    // required this.service,
  });

  @override
  Widget build(BuildContext context) {
    // final map = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: serviceName,
        titleStyle: TextStyles.textstyle14.copyWith(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
        child: Column(
          children: [
            const ServiceImage(),
            SizedBox(height: 24.h),
            ServiceDescription(
              serviceName: serviceName,
              serviceDetails: serviceDetails,
            ),
          ],
        ),
      )),
    );
  }
}
