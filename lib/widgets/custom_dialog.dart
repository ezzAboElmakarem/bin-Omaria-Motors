import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/navigation/custom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void cutsomDialog({
  required BuildContext context,
  required Widget body,
  double? verticalPadding,
  String? title,
  Color? titleColor,
  // String? buttonTitle,
  // bool hasButton = true,
  bool hasTitle = true,
  // required Widget secondbutton,
  // Function()? buttonOnTap,
  // void Function()? secondfunction,
}) {
  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (context) => Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: titleColor ?? Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title ?? "",
                    style: TextStyles.textstyle14,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      CustomNavigator.pop();
                    },
                    child: const Icon(Icons.close),
                  ),
                ],
              ),
            )
            // : const SizedBox.shrink(),
            ,
            body
          ],
        ),
      ),
    ),
  );
}
// Dialog(
//       backgroundColor: Colors.white,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadiusDirectional.circular(16)),
//       child: AppDialog(
//         dismissible: true,
//         hasButton: hasButton,
//         buttonOnTap: buttonOnTap ?? () {},
//         hasTitle: hasTitle,
//         title: title,
//         buttonTitle: buttonTitle,
//         child: body,
//       ),
//     ),
//     // AlertDialog(
//     //     // contentPadding: EdgeInsets.all(15.h),
//     //     backgroundColor: Colors.white,
//     //     title: title,
//     //     actions: actionsList),
//   );
// }

// class AppDialog extends StatelessWidget {
//   final Widget child;
//   final bool dismissible;
//   final String? title;
//   final bool hasButton;
//   final bool hasTitle;

//   final String? buttonTitle;
//   final VoidCallback buttonOnTap;

//   const AppDialog({
//     super.key,
//     required this.child,
//     required this.dismissible,
//     this.title,
//     required this.hasButton,
//     this.buttonTitle,
//     required this.buttonOnTap,
//     required this.hasTitle,
//   });

//   static Future<dynamic> show({
//     required Widget child,
//     String? title,
//     bool dismissible = true,
//     bool hasButton = true,
//     bool hasTitle = true,
//     String? buttonTitle,
//     VoidCallback? buttonOnTap,
//   }) {
//     return showDialog(
//       context: RouteUtils.context,
//       barrierDismissible: false,
//       // barrierColor: AppColors.secondary.withOpacity(0.7),
//       builder: (context) {
//         return AppDialog(
//           dismissible: dismissible,
//           title: title ?? "",
//           hasButton: hasButton,
//           buttonTitle: buttonTitle ?? "",
//           buttonOnTap: buttonOnTap ??
//               () {
//                 // RouteUtils.navigateAndPopAll(const LoginView());
//               },
//           hasTitle: hasTitle,
//           child: child,
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
//     return Material(
//       color: Colors.transparent,
//       child: UnconstrainedBox(
//         constrainedAxis: Axis.horizontal,
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             color: null,
//             // border: Border.all(width: 4, color: AppColors.white),
//           ),
//           // margin: EdgeInsets.only(
//           //   left: 20,
//           //   right: 20,
//           //   bottom: keyboardHeight,
//           // ),
//           child: Column(
//             children: [
//               hasTitle
//                   ? Container(
//                       height: 60.h,
//                       width: double.infinity,
//                       decoration: const BoxDecoration(
//                         color: Color(0xffF9F9F9),
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(25),
//                           topRight: Radius.circular(25),
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             textAlign: TextAlign.start,
//                             title ?? '',
//                             style: const TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           if (dismissible)
//                             UnconstrainedBox(
//                               child: InkWell(
//                                 onTap: () => Navigator.pop(context),
//                                 child: Container(
//                                   height: 32.h,
//                                   width: 32.w,
//                                   margin: const EdgeInsets.symmetric(
//                                       horizontal: 24),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(16),
//                                     color: Colors.transparent,
//                                   ),
//                                   child: const Icon(
//                                     Icons.close,
//                                     color: Colors.black,
//                                     size: 20,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                         ],
//                       ),
//                     )
//                   : const SizedBox.shrink(),
//               Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(16),
//                     bottomRight: Radius.circular(16),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     child,
//                     if (hasButton)
//                       Padding(
//                         padding: const EdgeInsets.all(12),
//                         child: CustomButton(
//                           buttonText: buttonTitle ?? "",
//                           onTap: buttonOnTap,
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
