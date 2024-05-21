// ignore_for_file: avoid_print

import 'package:bin_omaira_motors/features/verification/bloc/verification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class VerificationCodeWidget extends StatelessWidget {
  const VerificationCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = VerificationBLoc.get(context);

    return Form(
      key: bloc.formkey,
      child: Center(
        child: Pinput(
          controller: bloc.code,
          defaultPinTheme: PinTheme(
            width: 70.w,
            height: 70.h,
            textStyle: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(0.6)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          focusedPinTheme: PinTheme(
            width: 70.w,
            height: 70.h,
            textStyle: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          // submittedPinTheme: submittedPinTheme,
          validator: (s) {
            return null;

            // log();
            // return s == bloc.code.text ? null : 'Pin is incorrect';
          },
          pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          showCursor: true,
          onCompleted: (pin) => print("Completed" + pin),
        ),
      ),
    );
  }
}
