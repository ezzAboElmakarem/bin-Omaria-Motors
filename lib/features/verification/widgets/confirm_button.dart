import 'package:bin_omaira_motors/core/app_event.dart';
import 'package:bin_omaira_motors/core/app_state.dart';
import 'package:bin_omaira_motors/features/verification/bloc/verification_bloc.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = VerificationBLoc.get(context);

    return BlocBuilder<VerificationBLoc, AppState>(
      builder: (context, state) {
        if (state is Loading) {
          return const Center(
            child: CircularProgressIndicator(color: kPrimaryColor),
          );
        } else {
          return CustomButton(
            buttonText: 'confirm'.tr(),
            textColor: null,
            onTap: () {
              bloc.add(Click());
            },
          );
        }
      },
    );
  }
}
