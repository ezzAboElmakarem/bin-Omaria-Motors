import 'dart:developer';

import 'package:bin_omaira_motors/core/AppStorage.dart';
import 'package:bin_omaira_motors/core/app_event.dart';
import 'package:bin_omaira_motors/core/app_state.dart';
import 'package:bin_omaira_motors/features/verification/repo/verification_repo.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
import 'package:bin_omaira_motors/widgets/custom_snackbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationBLoc extends Bloc<AppEvent, AppState> {
  VerificationBLoc() : super(Start()) {
    on<Click>(verifyCode);
    // on<ResendCode>(_resendCode);
    on<Reset>((event, emit) => emit(Start()));
  }
  static VerificationBLoc get(context) => BlocProvider.of(context);
  TextEditingController code = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  verifyCode(Click event, Emitter<AppState> emit) async {
    if (!formkey.currentState!.validate()) return;
    log("user id" + AppStorage.getUserId.toString());
    emit(Loading());

    Map<String, dynamic> body = {
      "id": AppStorage.getUserId.toString(),
      "code": code.text,
    };
    try {
      Response response = await VerificationRepository.verify(body: body);
      // GetStorage().write('reset_pass_code', response.data["data"]["code"]);

      if (response.statusCode == 200) {
        emit(Done());

        // AppStorage.cacheToken(response.data['data']['isVerified']);
        CustomNavigator.push(Routes.SIGNIN);

        // if (event.arguments == true) {
        //   RouteUtils.navigateTo(const LoginScreenView());
        // } else {
        //   RouteUtils.navigateTo(
        //     const ResetPasswordScreenView(),
        //   );
        // }
      } else {
        emit(Error());
        showSnackBar(" ${response.data['message']}");

        log("Failed to Verify the code");
        emit(Error());
      }
    } catch (e) {
      emit(Error());
      showSnackBar("catch an error ==>$e");

      log("Catch an error => ${e.toString()}");
    }
  }

  // _resendCode(AppEvent event, Emitter<AppState> emit) async {
  //   // if (!formKey.currentState!.validate()) return;
  //   emit(Loading());
  //   String body = GetStorage().read('email');
  //   // String body = LoginBloc.get(RouteUtils.context).emailOrPhone.text;
  //   try {
  //     Response response = await ForgetPasswordRepo.sendCode(body: body);
  //     if (response.statusCode == 200) {
  //       log("Done ${response.statusCode}");
  //       // AppStorage.cacheId(response.data['user_id']);
  //       emit(Done());
  //     } else {
  //       log("Error ${response.statusCode}");
  //       showSnackBar(
  //         response.data['message'],
  //       );

  //       emit(Error());
  //     }
  //   } catch (e) {
  //     log("error from the catch part: $e");
  //     showSnackBar( "catch an error ==>$e");
  //   }
  // }
}
