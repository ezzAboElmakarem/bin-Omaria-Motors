import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
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
    this.appBarColor,
    this.iconColor,
    this.titleStyle,
    this.titleWidget,
  }) : super(key: key);

  final BuildContext context;
  final Widget? leading;
  final Widget? titleWidget;

  final String? title;
  final List<Widget>? actions;
  final Color? appBarColor;
  final Color? iconColor;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor ?? Colors.black,
      centerTitle: true,
      toolbarHeight: appBarHeight,
      leading: leading ??
          IconButton(
            onPressed: () {
              CustomNavigator.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: iconColor ?? Colors.white,
              size: 16.sp,
            ),
          ),
      title: titleWidget ??
          Text(
            title ?? '',
            style: titleStyle,
          ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight ?? kToolbarHeight);
}
