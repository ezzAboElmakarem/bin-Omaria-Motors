import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarModel extends StatelessWidget {
  const CarModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tesla 2019 Model 3',
          style: TextStyles.textstyle20,
        ),
        SizedBox(height: 8.h),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Text(
              'Model 3 Standard Range Plus Rear-Wheel Drive',
              style: TextStyles.textstyle12
                  .copyWith(color: Colors.grey.withOpacity(0.7)),
            )),
      ],
    );
  }
}
