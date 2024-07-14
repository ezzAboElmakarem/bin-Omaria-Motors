import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDetailsSwiper extends StatefulWidget {
  const CarDetailsSwiper({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CarDetailsSwiperState createState() => _CarDetailsSwiperState();
}

class _CarDetailsSwiperState extends State<CarDetailsSwiper> {
  late SwiperController _swiperController;

  @override
  void initState() {
    _swiperController = SwiperController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200.h,
          child: Swiper(
            itemCount: 3,
            controller: _swiperController,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    AssetsData.bigCar,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 4,
          top: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              _swiperController.previous();
            },
            child: Container(
              height: 30.h,
              width: 30.h,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 14,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 4,
          top: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              _swiperController.next();
            },
            child: Container(
              height: 30.h,
              width: 30.h,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
