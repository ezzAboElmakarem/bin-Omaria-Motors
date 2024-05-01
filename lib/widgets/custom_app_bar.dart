import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? appBarHeight;

  const CustomAppBar({
    Key? key,
    this.appBarHeight,
    required this.context,
    this.leading,
    this.title,
    this.actions,
  }) : super(key: key);

  final BuildContext context;
  final Widget? leading;
  final String? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: leading ??
          IconButton(
            onPressed: () {
              RouteUtils.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 16.sp,
            ),
          ),
      title: Text(title ?? ''),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight ?? kToolbarHeight);
}
