import 'dart:developer';

import 'package:bin_omaira_motors/features/purchase/widgets/first_step_content.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/second_step_content.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/third_step_content.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseStepper extends StatefulWidget {
  const PurchaseStepper({super.key});

  @override
  State<PurchaseStepper> createState() => _PurchaseStepperState();
}

class _PurchaseStepperState extends State<PurchaseStepper> {
  int currentStep = 0;

  onStepContinue() {
    final isLastStep = currentStep == getSteps().length - 1;
    if (isLastStep) {
      log("compelete");
    } else {
      setState(() {
        currentStep += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.black,
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Colors.grey.withOpacity(0.5),
              secondary: Colors.red,
            ),
      ),
      child: Stepper(
        currentStep: currentStep,
        type: StepperType.horizontal,
        steps: getSteps(),
        onStepTapped: (step) => setState(() => currentStep = step),
        onStepContinue: onStepContinue,
        onStepCancel: () {
          currentStep == 0 ? null : setState(() => currentStep -= 1);
        },
        controlsBuilder: (context, details) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 32.h),
            child: CustomButton(
              buttonText: "next".tr(),
              onTap: details.onStepContinue!,
            ),
          );
        },
        stepIconBuilder: (stepIndex, stepState) {
          return Container(
            width: 28.w,
            height: 28.h,
            decoration: BoxDecoration(
              color: currentStep == stepIndex
                  ? Colors.grey.withOpacity(0.2)
                  : ColorStyles.blackColor,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            child: stepIndex == 0
                ? Center(
                    child: Text(
                      '1',
                      style:
                          TextStyles.textstyle12.copyWith(color: Colors.white),
                    ),
                  )
                : stepIndex == 1
                    ? Center(
                        child: Text(
                          '2',
                          style: TextStyles.textstyle12
                              .copyWith(color: Colors.white),
                        ),
                      )
                    : Center(
                        child: Text(
                          '3',
                          style: TextStyles.textstyle12
                              .copyWith(color: Colors.white),
                        ),
                      ),
          );
        },
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          // state: currentStep > 0 ? StepState.complete : StepState.indexed,
          title: const SizedBox.shrink(),
          content: const FirstStepContent(),
          label: Text(
            'summary'.tr(),
            style: TextStyles.textstyle14.copyWith(
                color: currentStep != 0
                    ? Colors.white.withOpacity(0.6)
                    : Colors.white),
          ),
        ),
        Step(
          isActive: currentStep >= 1,
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          title: const SizedBox.shrink(),
          label: Text(
            'shipping'.tr(),
            style: TextStyles.textstyle14.copyWith(
                color: currentStep != 1
                    ? Colors.white.withOpacity(0.6)
                    : Colors.white),
          ),
          content: const SecondStepContent(),
        ),
        Step(
          isActive: currentStep >= 2,
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          title: const SizedBox.shrink(),
          label: Text(
            'Payment'.tr(),
            style: TextStyles.textstyle14.copyWith(
                color: currentStep != 2
                    ? Colors.white.withOpacity(0.6)
                    : Colors.white),
          ),
          content: const ThirdStepContent(),
        ),
      ];
}
