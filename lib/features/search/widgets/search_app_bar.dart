import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/routes.dart';
import 'package:bin_omaira_motors/widgets/custom_tex_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? appBarHeight;

  const SearchAppBar({
    Key? key,
    this.appBarHeight,
    required this.context,
    this.leading,
    this.title,
    this.actions,
    this.appBarColor,
    this.iconColor,
    this.titleStyle,
  }) : super(key: key);

  final BuildContext context;
  final Widget? leading;
  final String? title;
  final List<Widget>? actions;
  final Color? appBarColor;
  final Color? iconColor;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorStyles.blackColor,
      automaticallyImplyLeading: false,
      toolbarHeight: appBarHeight,
      title: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              borderColor: Colors.grey.withOpacity(0.5),
              ispassword: false,
              isEnabled: false,
              fillColor: ColorStyles.blackColor,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              hint: "search_text".tr(),
              hintColor: Colors.grey,
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          GestureDetector(
            onTap: () {
              CustomNavigator.push(Routes.SEARCHFILTER);

              // RouteUtils.navigateTo(const SearchFilterView());
            },
            child: Container(
              height: 54.h,
              width: 60.w,
              decoration: BoxDecoration(
                  // color: ColorStyles.redColor,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: Colors.grey.withOpacity(0.5))),
              child: Image.asset(AssetsData.whiteFilter, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight ?? kToolbarHeight);
}
