import 'package:flutter/material.dart';

class CustomBackGroundImage extends StatelessWidget {
  final Widget child;
  final String imageUrl;
  const CustomBackGroundImage({
    super.key,
    required this.imageUrl,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
