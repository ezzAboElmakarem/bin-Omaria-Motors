import 'package:bin_omaira_motors/features/home/view/home_view.dart';
import 'package:bin_omaira_motors/features/orders/views/orders_view.dart';
import 'package:bin_omaira_motors/features/search/views/search_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  NavBarViewState createState() => NavBarViewState();
}

class NavBarViewState extends State<NavBarView> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const SearchView(),
    const OrdersView(),
    const MoreScreen(),
  ];

  void navigateToSearchScreen() {
    setState(() {
      _selectedIndex = 1; // Index 1 represents the search screen
    });
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorStyles.blackColor,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedLabelStyle: TextStyles.textstyle10.copyWith(),
        unselectedLabelStyle: TextStyles.textstyle10
            .copyWith(color: Colors.white.withOpacity(0.6)),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(AssetsData.home),
              size: 28.h,
              color: _selectedIndex == 0
                  ? kPrimaryColor
                  : Colors.white.withOpacity(0.6),
            ),
            label: 'home'.tr(),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(AssetsData.search),
              size: 28.h,
              color: _selectedIndex == 1
                  ? kPrimaryColor
                  : Colors.white.withOpacity(0.6),
            ),
            label: 'search'.tr(),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(AssetsData.cart),
              size: 28.h,
              color: _selectedIndex == 2
                  ? kPrimaryColor
                  : Colors.white.withOpacity(0.6),
            ),
            label: 'orders'.tr(),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(AssetsData.more),
              size: 28.h,
              color: _selectedIndex == 3
                  ? kPrimaryColor
                  : Colors.white.withOpacity(0.6),
            ),
            label: 'more'.tr(),
          ),
        ],
        selectedIconTheme: const IconThemeData(
            color: kPrimaryColor), // Define selected icon color
      ),
    );
  }
}

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Orders Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'More Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
