import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:flutter/material.dart';

void showSnackBar(
  String message, {
  bool errorMessage = false,
  duration = 5,
  Color color = kPrimaryColor,
  SnackBarAction? action,
}) {
  if (message.trim().isEmpty) {
    return;
  }
  ScaffoldMessenger.of(CustomNavigator.context).hideCurrentSnackBar();
  ScaffoldMessenger.of(CustomNavigator.context).showSnackBar(
    SnackBar(
      backgroundColor: errorMessage ? ColorStyles.redColor : color,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0.0,
      content: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      action: action ??
          SnackBarAction(
            label: '',
            onPressed: () {},
          ),
      duration: Duration(seconds: duration),
    ),
  );
}
