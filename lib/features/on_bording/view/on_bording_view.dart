import 'package:bin_omaira_motors/core/AppStorage.dart';
import 'package:bin_omaira_motors/features/on_bording/models/onbording_model.dart';
import 'package:bin_omaira_motors/features/on_bording/widgets/bording_item.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  var bordingController = PageController();
  bool isLastScreen = false;
  int currentIndex = 0;
  @override
  void initState() {
    AppStorage.cacheOnBoarding(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 8.h),
          // const SkipButtonWidget(),
          // // SizedBox(height: 40.h),
          Expanded(
            child: SizedBox(
              child: PageView.builder(
                controller: bordingController,
                onPageChanged: (int index) {
                  currentIndex = index;
                  if (index == onbordingItems.length - 1) {
                    setState(() {
                      isLastScreen = true;
                    });
                  } else {
                    setState(() {
                      isLastScreen = false;
                    });
                  }
                },
                itemCount: onbordingItems.length,
                itemBuilder: (context, index) => buildBordingItem(
                    onbordingItems[index],
                    currentIndex: currentIndex),
              ),
            ),
          ),
          Positioned(
            bottom: 34.h,
            left: 24.w,
            child: GestureDetector(
              onTap: () {
                if (isLastScreen == true) {
                  // RouteUtils.navigateAndPopAll(const LoginScreenView());
                } else {
                  bordingController.nextPage(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.fastLinearToSlowEaseIn);
                }
              },
              child: CircularPercentIndicator(
                radius: 42.0,
                lineWidth: 10.sp,
                backgroundColor: kPrimaryColor.withOpacity(0.2),
                circularStrokeCap: CircularStrokeCap.round,
                percent: (currentIndex + 1) / onbordingItems.length,
                center: const CircleAvatar(
                    radius: 28,
                    backgroundColor: kPrimaryColor,
                    child: Icon(Icons.arrow_forward_ios)),
                progressColor: const Color(0xff397989),
              ),
            ),
          ),
          // SizedBox(height: 24.h),
          // SmoothIndicatorWidget(bordingController: bordingController),
          // SizedBox(height: 48.h),

          // NextBordingButton(
          //     isLastScreen: isLastScreen,
          //     bordingController: bordingController),
        ],
      ),
    );
  }
}
