import 'package:bin_omaira_motors/features/home/view/home_view.dart';
import 'package:bin_omaira_motors/features/main_pages/cubit/nav_bar_cubit.dart';
import 'package:bin_omaira_motors/features/main_pages/cubit/nav_bar_state.dart';
import 'package:bin_omaira_motors/features/more/view/more_view.dart';
import 'package:bin_omaira_motors/features/orders/views/orders_view.dart';
import 'package:bin_omaira_motors/features/search/views/search_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class NavBarView extends StatefulWidget {
//   const NavBarView({super.key});

//   @override
//   NavBarViewState createState() => NavBarViewState();
// }

// class NavBarViewState extends State<NavBarView> {
//   int _selectedIndex = 0;

//   static final List<Widget> _widgetOptions = <Widget>[
//     const HomeView(),
//     const SearchView(),
//     const OrdersView(),
//     const MoreView(),
//   ];

//   void navigateToSearchScreen() {
//     setState(() {
//       _selectedIndex = 1;
//     });
//   }

//   void navigateToOrderScreen() {
//     setState(() {
//       _selectedIndex = 2;
//     });
//   }

//   void onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: ColorStyles.blackColor,
//         unselectedItemColor: Colors.white.withOpacity(0.6),
//         selectedLabelStyle: TextStyles.textstyle10.copyWith(),
//         unselectedLabelStyle: TextStyles.textstyle10
//             .copyWith(color: Colors.white.withOpacity(0.6)),
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: kPrimaryColor,
//         currentIndex: _selectedIndex,
//         onTap: onItemTapped,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               const AssetImage(AssetsData.home),
//               size: 28.h,
//               color: _selectedIndex == 0
//                   ? kPrimaryColor
//                   : Colors.white.withOpacity(0.6),
//             ),
//             label: 'home'.tr(),
//           ),
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               const AssetImage(AssetsData.search),
//               size: 28.h,
//               color: _selectedIndex == 1
//                   ? kPrimaryColor
//                   : Colors.white.withOpacity(0.6),
//             ),
//             label: 'search'.tr(),
//           ),
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               const AssetImage(AssetsData.cart),
//               size: 28.h,
//               color: _selectedIndex == 2
//                   ? kPrimaryColor
//                   : Colors.white.withOpacity(0.6),
//             ),
//             label: 'orders'.tr(),
//           ),
//           BottomNavigationBarItem(
//             icon: ImageIcon(
//               const AssetImage(AssetsData.more),
//               size: 28.h,
//               color: _selectedIndex == 3
//                   ? kPrimaryColor
//                   : Colors.white.withOpacity(0.6),
//             ),
//             label: 'more'.tr(),
//           ),
//         ],
//         selectedIconTheme: const IconThemeData(
//             color: kPrimaryColor), // Define selected icon color
//       ),
//     );
//   }
// }

class NavBarView extends StatefulWidget {
  final int? index;

  const NavBarView({Key? key, this.index}) : super(key: key);

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

Widget icon({
  required String imagePath,
  required bool isSelected,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 4),
      child: Image.asset(
        imagePath,
        color: isSelected ? kPrimaryColor : Colors.grey,
        height: 30.h,
        width: 30.w,
      ),
    );

class _NavBarViewState extends State<NavBarView> {
  @override
  void initState() {
    // UserBloc.instance.add(Click());
    if (widget.index != null) {
      context.read<NavBarCubit>().currentViewIndex = widget.index!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarStates>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: kPrimaryColor),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 11.sp,
            ),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kPrimaryColor,
            currentIndex: context.read<NavBarCubit>().currentViewIndex,
            onTap: (index) {
              context.read<NavBarCubit>().changeView(index);
              // if (index == 3) context.read<MoreBloc>().add(Click());
            },
            items: [
              BottomNavigationBarItem(
                icon: icon(
                  imagePath: AssetsData.home,
                  isSelected: context.read<NavBarCubit>().currentViewIndex == 0,
                ),
                label: "home".tr(),
              ),
              BottomNavigationBarItem(
                icon: icon(
                  imagePath: AssetsData.search,
                  isSelected: context.read<NavBarCubit>().currentViewIndex == 1,
                ),
                label: "search".tr(),
              ),
              BottomNavigationBarItem(
                icon: icon(
                  imagePath: AssetsData.cart,
                  isSelected: context.read<NavBarCubit>().currentViewIndex == 2,
                ),
                label: "orders".tr(),
              ),
              BottomNavigationBarItem(
                icon: icon(
                  imagePath: AssetsData.more,
                  isSelected: context.read<NavBarCubit>().currentViewIndex == 3,
                ),
                label: "more".tr(),
              ),
            ],
          ),
          body: body(index: context.read<NavBarCubit>().currentViewIndex),
        );
      },
    );

//?Put it up there, and use it to check that the user data has been loaded
    // return
    // BlocBuilder<UserBloc, AppState>(
    //   builder: (context, state) {
    //     if (state is Done) {
    //       return StreamBuilder<String>(
    //         stream: mainAppBloc.langStream,
    //         builder: (context, lang) {

    //           },
    //       );
    //     }
    //     return Container();
    //   },
    // );
  }
}

Widget body({required int index}) {
  switch (index) {
    case 0:
      // HomeBloc.instance.add(Get());
      return const HomeView();
    case 1:
      // PostsListBloc.instance.selectedTap = 0;
      // PostsListBloc.instance.clearFilters();
      // PostsListBloc.instance.add(Get());
      return const SearchView();
    case 2:
      // MyClassesBloc.instance.clearFilters();
      // MyClassesBloc.instance.add(Get());
      return const OrdersView();
    case 3:
      // MyClassesBloc.instance.clearFilters();
      // MyClassesBloc.instance.add(Get());
      return const MoreView();
    default:
      return Container(
        color: ColorStyles.darkgreyColor,
      );
  }
}
