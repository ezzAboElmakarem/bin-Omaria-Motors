import 'package:bin_omaira_motors/features/register/bloc/register_bloc.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/validations.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterForms extends StatefulWidget {
  const RegisterForms({
    super.key,
  });

  @override
  State<RegisterForms> createState() => _RegisterFormsState();
}

class _RegisterFormsState extends State<RegisterForms> {
  bool isPassword = true;
  bool confirmedPassword = true;

  @override
  Widget build(BuildContext context) {
    var bloc = RegisterBloc.get(context);

    return Form(
      key: bloc.formkey,
      child: Column(
        children: [
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            type: TextInputType.name,
            validation: Validator.name,
            controller: bloc.name,
            textColor: Colors.white,
            hint: 'name'.tr(),
            labelText: 'name'.tr(),
            suffixIcon:
                Icon(Icons.person_2_sharp, color: ColorStyles.darkgreyColor),
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            textColor: Colors.white,
            type: TextInputType.emailAddress,
            controller: bloc.email,
            validation: Validator.email,
            hint: 'email'.tr(),
            labelText: 'email'.tr(),
            suffixIcon: Icon(Icons.email, color: ColorStyles.darkgreyColor),
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            ispassword: false,
            isEnabled: true,
            type: TextInputType.phone,
            controller: bloc.phone,
            textColor: Colors.white,
            validation: Validator.phone,
            hint: 'phone_number'.tr(),
            labelText: 'phone_number'.tr(),
            // prefixIcon: AppCountryPicker(
            //   onSelect: (String country, String code) {},
            // ),
            suffixIcon: Icon(Icons.phone, color: ColorStyles.darkgreyColor),
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            ispassword: isPassword,
            isEnabled: true,
            type: TextInputType.visiblePassword,
            controller: bloc.password,
            validation: Validator.password,
            hint: 'password'.tr(),
            textColor: Colors.white,
            labelText: 'password'.tr(),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPassword = !isPassword;
                });
              },
              icon: Icon(isPassword ? Icons.visibility_off : Icons.visibility,
                  color: ColorStyles.darkgreyColor),
            ),
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            ispassword: confirmedPassword,
            isEnabled: true,
            type: TextInputType.visiblePassword,
            controller: bloc.passwordConfirmation,
            validation: Validator.password,
            textColor: Colors.white,
            hint: 'confirm_password'.tr(),
            labelText: 'confirm_password'.tr(),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  confirmedPassword = !confirmedPassword;
                });
              },
              icon: Icon(
                  confirmedPassword ? Icons.visibility_off : Icons.visibility,
                  color: ColorStyles.darkgreyColor),
            ),
          ),
        ],
      ),
    );
  }
}
