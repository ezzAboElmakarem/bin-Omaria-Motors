import 'dart:developer';

import 'package:bin_omaira_motors/core/AppStorage.dart';
import 'package:bin_omaira_motors/core/app_event.dart';
import 'package:bin_omaira_motors/core/app_state.dart';
import 'package:bin_omaira_motors/features/register/repo/register_repo.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
import 'package:bin_omaira_motors/widgets/custom_snackbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

class RegisterBloc extends Bloc<AppEvent, AppState> {
  RegisterBloc() : super(Start()) {
    on<Click>(_addUser);
    on<Reset>((event, emit) => emit(Start()));
  }

  static RegisterBloc get(context) => BlocProvider.of(context);

  // static SignupBloc get instance =>
  //     BlocProvider.of<SignupBloc>(RouteUtils.context);

  bool acceptTerms = false;

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  _addUser(AppEvent event, Emitter<AppState> emit) async {
    if (!formkey.currentState!.validate()) return;

    emit(Loading());
    Map<String, dynamic> body = {
      "name": name.text,
      "email": email.text,
      "phone": phone.text,
      "password": password.text,
      "password_confirmation": passwordConfirmation.text,
      "fcm_token": "fgloirfgj4tl4t"
    };
    try {
      Response response = await RegisterRepository.signUp(body: body);

      if (response.statusCode == 200) {
        log("response => $response");
        log(response.statusCode.toString());

        // String userId = response.data["data"]["user_id"].toString();
        // String code = response.data["data"]["code"].toString();

        // GetStorage().write('user_id', userId);
        // GetStorage().write('  code', code);
        // GetStorage().write('email', email.text);
        // emit(Done());
        // AppStorage.cacheId(response.data["data"]["user_id"]);

        // AppStorage.cacheToken(response.data['data']['token']);
        CustomNavigator.push(Routes.VERIFICATION);
        // RouteUtils.navigateAndPopAll(const VerfiyCodeScreenView(
        //   isVerified: true,
        // ));
      }
      // else if (response.statusCode == 422) {
      //   emit(Error());
      //   showSnackBar(RouteUtils.context, "${response.data['message']}");
      // }
      else {
        emit(Error());
        log('error name  ${body["name"]}');
        showSnackBar(" ${response.data['message']}");
      }
    } catch (e) {
      emit(Error());
      showSnackBar("catch an error ==>$e");

      log(e.toString());
    }
  }
}
