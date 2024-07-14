
// import 'package:bin_omaira_motors/helper/colors_styles.dart';
// import 'package:bin_omaira_motors/helper/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SpecificationDialog extends StatelessWidget {
//   final String? title;
//   final String? content;
//   final Specification? specification;
//   const SpecificationDialog({Key? key, this.title, this.content, this.specification}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomAnimation(
//       duration: 1,
//       horizontalOffset: 0.0,
//       verticalOffset: 150.0,
//       child: AlertDialog(
//         titlePadding: EdgeInsets.zero,
//         actionsPadding: EdgeInsets.zero,
//         backgroundColor: Colors.white,
//         contentPadding: EdgeInsets.zero,
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
//         elevation: 30,
//         content: Container(
//           color: Colors.white,
//           width: MediaQuery.of(context).size.width,
//           padding: EdgeInsets.all(24.h),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(top: 12.h, bottom: 24.h),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                   Text(
//                       title ?? "",
//                       style: TextStyle(
//                             color: ColorStyles.blackColor,
//                       fontSize: 14.sp,
//                       fontWeight: FontWeight.bold,
//                       ),
                  
//                     ),
//                     GestureDetector(
//                       onTap: () => RouteUtils.pop(),
//                       child: Icon(Icons.close, size: 18.sp),
//                     )
//                   ],
//                 ),
//               ),
//               if(title == LocaleKeys.specifications.tr())...[
//                 _SingleSpecificationItem(LocaleKeys.importedFrom.tr(), "${specification?.comeTown}"),
//                 Divider(),
//                 _SingleSpecificationItem(LocaleKeys.fuelType.tr(), "${specification?.fuel}"),
//                 Divider(),
//                 _SingleSpecificationItem(LocaleKeys.gearType.tr(), "${specification?.gearType}"),
//                 Divider(),
//                 _SingleSpecificationItem(LocaleKeys.wheelDriveType.tr(), "${specification?.push}"),
//                 Divider(),
//                 _SingleSpecificationItem(LocaleKeys.cylinderNumber.tr(), "${specification?.cylinders}"),
//                 Divider(),
//                 _SingleSpecificationItem(LocaleKeys.motorSize.tr(), "${specification?.engine}"),
//                 Divider(),
//                 _SingleSpecificationItem(LocaleKeys.carCondition.tr(), "${specification?.carCondition}"),
//                 Divider(),
//                 _SingleSpecificationItem(LocaleKeys.consumedKilometer.tr(), "${specification?.kms}"),
//               ],

//               if (title != LocaleKeys.specifications.tr())
//                 Text(
//                   "$content",
//                   style: TextStyle(
//                                       fontSize: 12.sp,
//                   fontWeight: FontWeight.w500,

//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class _SingleSpecificationItem extends StatelessWidget {
//   final String? title;
//   final String? subTitle;
//   const _SingleSpecificationItem(this.title, this.subTitle, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 4.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//              "$title",
//             style: TextStyle(
//                fontSize: 12.sp,
//             fontWeight: FontWeight.w400,
//             ),
           
//           ),
//           SizedBox(width: 30),
//           Expanded(
//             child: Text(
//               "$subTitle",
//               textAlign: TextAlign.end,
//               style: TextStyle(
//                               fontSize: 12.sp,
//               fontWeight: FontWeight.bold,

//               ),
//               maxLines: 5,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// class SpecificationItem extends StatelessWidget {
//   final String? hint;
//   final Widget? dialog;
//   const SpecificationItem({Key? key, this.hint, this.dialog}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _specificationDialog(dialog),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
//         color: Colors.transparent,
//         child: Row(
//           children: [
//             Icon(Icons.circle, size: 6.sp),
//             Text(
//               "$hint",
//               style: TextStyle(
//                    fontSize: 12.sp,
//               fontWeight: FontWeight.w300,
//               ),
           
//               // horPadding: 8.w,
//             ),
//             Spacer(),
//             Icon(Icons.arrow_forward_ios, size: 15.sp)
//           ],
//         ),
//       ),
//     );
//   }
// }

// Future<void> _specificationDialog(Widget? dialog) {
//   return showDialog(
//     barrierDismissible: false,
//     context: RouteUtils.context,
//     builder: (_) => dialog!,
//   );
// }