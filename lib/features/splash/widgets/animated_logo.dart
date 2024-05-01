import 'package:bin_omaira_motors/features/on_bording/view/on_bording_view.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';

class AnimatedImagesBody extends StatefulWidget {
  const AnimatedImagesBody({
    super.key,
    // required this.animate,
  });
  // final bool animate;

  @override
  State<AnimatedImagesBody> createState() => _AnimatedImagesBodyState();
}

class _AnimatedImagesBodyState extends State<AnimatedImagesBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4),
      child: Column(
        children: [
          const Spacer(),
          const AnimationLogo(),
          // Center(child: SvgPicture.asset(AssetsData.logo, fit: BoxFit.cover)),
          // SizedBox(height: 40.h),
          // Image.asset(AssetsData.hiddenLogo, fit: BoxFit.cover),
          SizedBox(height: 290.h),
          const Spacer(),
        ],
      ),
    );
  }
}

class AnimationLogo extends StatelessWidget {
  const AnimationLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      tween: Tween(begin: 100.0, end: 200.0),
      duration: const Duration(seconds: 5),
      curve: Curves.fastOutSlowIn,
      builder: (context, value, _) {
        return SizedBox(
          width: value, // use animated value
          height: value,
          child: SvgPicture.asset(
            AssetsData.logo,
          ),
        );
      },
      onCompleted: () {
        RouteUtils.navigateAndPopAll(const OnBordingView());
      },
    );
  }
}
