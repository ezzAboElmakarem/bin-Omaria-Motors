import 'package:bin_omaira_motors/main_pages/cubit/nav_bar_cubit.dart';
import 'package:bin_omaira_motors/features/splash/view/splash_view.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/keyboard_close_observer.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:bin_omaira_motors/network/network_layer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart' as services;
import 'package:get_storage/get_storage.dart';

Locale currentLocale = const Locale('en', 'US');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await Future.value([
    await EasyLocalization.ensureInitialized(),
  ]);
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      path: 'assets/lang',
      saveLocale: true,
      startLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Network.lang = context.locale.languageCode;

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return AnnotatedRegion(
            value: const services.SystemUiOverlayStyle(
              systemNavigationBarColor: Colors.black,
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light,
            ),
            child: KeyboardPopScaffold(
              child: BlocProvider(
                create: (context) => NavBarCubit(),
                child: MaterialApp(
                  title: 'Flutter Demo',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
                    fontFamily: "Gotham",
                    useMaterial3: true,
                  ),
                  navigatorKey: navigatorKey,
                  onGenerateRoute: onGenerateRoute,
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: const [
                    Locale('en'),
                    Locale('ar'),
                  ],
                  locale: context.locale,
                  home: const SplashView(),
                ),
              ),
            ),
          );
        });
  }
}
