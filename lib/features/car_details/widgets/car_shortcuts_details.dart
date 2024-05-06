import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarShortcutsDetails extends StatelessWidget {
  const CarShortcutsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 28.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 12,
                offset: const Offset(0, 3),
              ),
            ], borderRadius: BorderRadius.circular(12)),
            child: Card(
              child: SizedBox(
                  height: 44.h,
                  width: 44.w,
                  child: Icon(Icons.phone_outlined,
                      color: Colors.black, size: 26.sp)),
            ),
          ),
          Container(
            width: 52.w,
            height: 52.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: Colors.grey.withOpacity(0.4))),
            child: Center(
              child: Image.asset(
                AssetsData.tesla2,
                height: 33.h,
                width: 33.w,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0.8,
                blurRadius: 12,
                offset: const Offset(0, 3),
              ),
            ], borderRadius: BorderRadius.circular(12)),
            child: Card(
              child: SizedBox(
                  height: 44.h,
                  width: 44.w,
                  child: Image.asset(AssetsData.escape)),
            ),
          ),
        ],
      ),
    );
  }
}
