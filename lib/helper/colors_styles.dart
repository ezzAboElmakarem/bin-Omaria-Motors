import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff377a8c);
List<String> carsModels = const [
  "X3 Model 2",
  "X3 Model 3",
  "X3 Model 4",
  "X3 Model 5",
];
List<Color> kColors = const [
  Color(0xffAC3931),
  Color(0xffE5D352),
  Color(0xffD9E76C),
  Color(0xff537D8D),
  Color(0xff482C3D),
];

Map<Color, String> colorNames = {
  const Color(0xffAC3931): 'Red',
  const Color(0xffE5D352): 'Yellow',
  const Color(0xffD9E76C): 'Light Green',
  const Color(0xff537D8D): 'Grayish Blue',
  const Color(0xff482C3D): 'Dark Red',
};

class ColorStyles {
  static Color secondColor = const Color(0xff1B899B);
  static Color signInButtonColor = const Color(0xff333E41);
  static Color redColor = const Color(0xffC2000B);
  static Color greenColor = const Color(0xff4CBD6B);
  static Color greyColor = const Color(0xff9A9EA7);
  static Color darkgreyColor = Colors.white.withOpacity(0.6);
  static Color blackColor = const Color(0xff101520);
  static Color hintColor = const Color(0xff0D0A19);
}
