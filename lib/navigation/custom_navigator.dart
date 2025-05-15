import 'dart:developer';

import 'package:bin_omaira_motors/features/about_us/views/about_us_view.dart';
import 'package:bin_omaira_motors/features/after_sale_services/views/sale_services.dart';
import 'package:bin_omaira_motors/features/all_cars/views/all_cars_view.dart';
import 'package:bin_omaira_motors/features/car_details/views/car_details_view.dart';
import 'package:bin_omaira_motors/features/change_language/views/change_lang_view.dart';
import 'package:bin_omaira_motors/features/change_password/views/change_pass_view.dart';
import 'package:bin_omaira_motors/features/contact_us/views/contact_us_view.dart';
import 'package:bin_omaira_motors/features/faq/views/faq_view.dart';
import 'package:bin_omaira_motors/features/forget_password/views/forget_password_view.dart';
import 'package:bin_omaira_motors/features/home/view/home_view.dart';
import 'package:bin_omaira_motors/features/more/view/more_view.dart';
import 'package:bin_omaira_motors/features/my_account/views/my_account_view.dart';
import 'package:bin_omaira_motors/features/new_password/views/new_pass_view.dart';
import 'package:bin_omaira_motors/features/notification/views/notification_view.dart';
import 'package:bin_omaira_motors/features/on_bording/view/on_bording_view.dart';
import 'package:bin_omaira_motors/features/order_details/views/order_details_view.dart';
import 'package:bin_omaira_motors/features/orders/views/orders_view.dart';
import 'package:bin_omaira_motors/features/our_branches/views/our_branches_view.dart';
import 'package:bin_omaira_motors/features/purchase/views/purchase_view.dart';
import 'package:bin_omaira_motors/features/register/views/register_view.dart';
import 'package:bin_omaira_motors/features/search/views/empty_result_view.dart';
import 'package:bin_omaira_motors/features/search/views/search_view.dart';
import 'package:bin_omaira_motors/features/search_filter/views/search_filter_view.dart';
import 'package:bin_omaira_motors/features/service/views/services_view.dart';
import 'package:bin_omaira_motors/features/sign_in/view/sign_in_view.dart';
import 'package:bin_omaira_motors/features/splash/view/splash_view.dart';
import 'package:bin_omaira_motors/features/success_screen/views/success_screen_view.dart';
import 'package:bin_omaira_motors/features/terms_and_condtions/views/terms_view.dart';
import 'package:bin_omaira_motors/features/usage_policy/views/usage_policy_view.dart';
import 'package:bin_omaira_motors/features/verification/view/verification_view.dart';
import 'package:bin_omaira_motors/features/welcome_Screen/view/welcome_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/route_utils.dart';
import 'package:bin_omaira_motors/main.dart';
import 'package:bin_omaira_motors/main_pages/cubit/nav_bar_cubit.dart';
import 'package:bin_omaira_motors/main_pages/navigation_bar_view.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const begin = Offset(0.0, 1.0);
const end = Offset.zero;
const curve = Curves.bounceInOut;
var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

abstract class CustomNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();
  static final GlobalKey<ScaffoldMessengerState> scaffoldState =
      GlobalKey<ScaffoldMessengerState>();

  static BuildContext context = navigatorState.currentContext!;

  static Future<dynamic> navigateAndPopUntilFirstPage(Widget page) =>
      navigatorKey.currentState!.pushAndRemoveUntil(
          _materialPageRoute(page), (route) => route.isFirst);

  static Route<dynamic> _materialPageRoute(Widget page) =>
      MaterialPageRoute(builder: (_) => page);

  static bool get isAR {
    return context.locale.languageCode == 'ar';
  }

  static Route<dynamic> onCreateRoute(RouteSettings settings) {
    log('Routes => ${settings.name}');

    PageRouteBuilder<dynamic> pageRoute(Widget widget) => PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => widget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
    switch (settings.name) {
      case Routes.APP:
        return pageRoute(const MyApp());
      // case Routes.PRESPLASH:
      //   return pageRoute(const PreSplashView());
      case Routes.SPLASH:
        return pageRoute(const SplashView());

      case Routes.BOARDING:
        return pageRoute(const OnBordingView());

      case Routes.WELCOME:
        return pageRoute(const WelcomeView());

      case Routes.SIGNIN:
        return pageRoute(const SignInView());

      case Routes.REGISTER:
        return pageRoute(const RegisterView());

      case Routes.FORGOTPASSWORD:
        return pageRoute(const ForgetPassView());

      case Routes.VERIFICATION:
        return pageRoute(const VerificationView());

      case Routes.NEWPASSWORD:
        return pageRoute(const NewPasswordView());

      case Routes.EmptyResult:
        return pageRoute(const EmptyResult());

      case Routes.SUCCESSPASSWORD:
        return pageRoute(
          SuccessScreenView(
            image: AssetsData.newPassSuccess,
            texttitle: 'new_pass_done_title'.tr(),
            textSubtitle: 'new_pass_done_subtitle'.tr(),
            navTo: const SignInView(),
            textButton: 'back_to_login'.tr(),
          ),
        );
      case Routes.SUCCESSREGISTER:
        return pageRoute(
          SuccessScreenView(
              image: AssetsData.successfullRegister,
              texttitle: "successfully_registered".tr(),
              textSubtitle: "successfully_registered_subtitle".tr(),
              navTo: const NavBarView(),
              textButton: 'continue'.tr()),
        );

      case Routes.NavBAR:
        return pageRoute(const NavBarView());

      case Routes.HOME:
        return pageRoute(const HomeView());

      case Routes.NOTIFICATIONS:
        return pageRoute(const NotificationView());

      case Routes.SEARCH:
        return pageRoute(const SearchView());

      case Routes.SEARCHFILTER:
        return pageRoute(const SearchFilterView());

      case Routes.OREDERS:
        return pageRoute(const OrdersView());
      //accepted //new //declined

      case Routes.OREDERDETAILS:
        return pageRoute(
            OrderDetailsView(orderState: settings.arguments as String));

      case Routes.CARDETAILS:
        return pageRoute(const CarDetailsView());

      case Routes.ALLCARS:
        return pageRoute(const AllCarsView());

      case Routes.PURCHASE:
        return pageRoute(const PurchaseView());

      case Routes.SUCCESSPURCHASE:
        return pageRoute(
          SuccessScreenView(
            image: AssetsData.flyingCar,
            texttitle: "purchase_success_title".tr(),
            textSubtitle: "purchase_success_subtitle".tr(),
            textButton: "my_orders".tr(),
            backgroundColor: Colors.white,
            textTitleColor: Colors.black,
            textSubtitleColor: Colors.black.withOpacity(0.7),
            buttonColor: kPrimaryColor.withOpacity(0.1),
            textButtonColor: kPrimaryColor,
            ontap: () {
              CustomNavigator.context.read<NavBarCubit>().changeView(2);
              CustomNavigator.push(Routes.NavBAR);

              // RouteUtils.navigateAndPopAll(const NavBarView());
              // log('bnm,');
              // RouteUtils.navigateTo(const NavBarView());

              // setState(() {
              //   (context as Element)
              //       .findAncestorStateOfType<NavBarViewState>()
              //       ?.navigateToOrderScreen();
              // });
            },
            navTo: const OrdersView(),
          ),
        );

      case Routes.MORE:
        return pageRoute(const MoreView());

      case Routes.MYACCOUNT:
        return pageRoute(const MyAccountView());

      case Routes.CHNAGEPASSWORD:
        return pageRoute(const ChangePassView());

      case Routes.CHNAGELANGUAGE:
        return pageRoute(const ChangeLanguageView());

      case Routes.ABOUTUS:
        return pageRoute(const AboutUsView());

      case Routes.OURBRANCHES:
        return pageRoute(const OurBranchesView());

      case Routes.TERMSANDCONDITIONS:
        return pageRoute(const TermsAndConditionsView());

      case Routes.USAGEPOLICY:
        return pageRoute(const UsagePolicyView());

      case Routes.AFTERSALESERVICE:
        return pageRoute(const AfterSaleServicesView());

      case Routes.SERVICE:
        Map<String, dynamic> args = settings.arguments as Map<String, dynamic>;
        return pageRoute(
          ServiceView(
            serviceName: args["serviceName"],
            serviceDetails: args["serviceDetails"],
          ),
        );

      case Routes.CONTACTUS:
        return pageRoute(const ContactUsView());

      case Routes.FAQ:
        return pageRoute(const FaqView());

//?Good example
      // case Routes.UPDATE_BRANCH:
      //   return pageRoute(
      //     BlocProvider(
      //       create: (context) => UpdateBranchesBloc(settings.arguments as UpdateBranchDataModel),
      //       child: UpdateBranchesPage(branchInfo: settings.arguments as UpdateBranchDataModel),
      //     ),
      //   );
      // case Routes.CLASS_DETAILS:
      //   return pageRoute(
      //     MultiBlocProvider(
      //       providers: [
      //         BlocProvider(
      //             create: (context) => ClassKidsBloc((settings.arguments as DayCareClass).id ?? 0)..getKids(),
      //             lazy: false),
      //         BlocProvider(
      //             create: (context) =>
      //                 ClassTeachersBloc((settings.arguments as DayCareClass).id ?? 0)..getTeachers(),
      //             lazy: false),
      //         BlocProvider(
      //             create: (context) =>
      //                 ClassScheduleBloc((settings.arguments as DayCareClass).id ?? 0)..getSchedules(),
      //             lazy: false),
      //       ],
      //       child: ClassDetailsPage(model: settings.arguments as DayCareClass),
      //     ),
      //   );

      default:
        return MaterialPageRoute(builder: (_) => const MyApp());
    }
  }

  static pop({dynamic result}) {
    if (navigatorState.currentState!.canPop()) {
      navigatorState.currentState!.pop(result);
    }
  }

  static Future<dynamic> push(
    String routeName, {
    arguments,
    bool replace = false,
    bool clean = false,
  }) {
    if (clean) {
      return navigatorState.currentState!.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);
    } else if (replace) {
      return navigatorState.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    } else {
      return navigatorState.currentState!
          .pushNamed(routeName, arguments: arguments);
    }
  }
}
