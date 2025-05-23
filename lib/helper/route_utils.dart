import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Route<dynamic>? onGenerateRoute(RouteSettings settings) => null;

class RouteUtils {
  static BuildContext context = navigatorKey.currentContext!;

  static Future<dynamic> navigateTo(Widget page) =>
      navigatorKey.currentState!.push(_materialPageRoute(page));

  static Future<dynamic> navigateAndReplace(Widget page) =>
      navigatorKey.currentState!.pushReplacement(_materialPageRoute(page));

  static Future<dynamic> navigateAndPopAll(Widget page) =>
      navigatorKey.currentState!.pushAndRemoveUntil(
        _materialPageRoute(page),
        (_) => false,
      );

  static Future<dynamic> navigateAndPopUntilFirstPage(Widget page) =>
      navigatorKey.currentState!.pushAndRemoveUntil(
          _materialPageRoute(page), (route) => route.isFirst);

  static void pop([Object? result]) => navigatorKey.currentState!.pop(result);

  static Route<dynamic> _materialPageRoute(Widget page) =>
      MaterialPageRoute(builder: (_) => page);

  static bool get isAR {
    return CustomNavigator.context.locale.languageCode == 'ar';
  }
}
