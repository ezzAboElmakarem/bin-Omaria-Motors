import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorDropdown extends StatefulWidget {
  const ColorDropdown({Key? key}) : super(key: key);

  @override
  State<ColorDropdown> createState() => _ColorDropdownState();
}

class _ColorDropdownState extends State<ColorDropdown> {
  Color selectedColor = kColors[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: DropdownButton<Color>(
        value: selectedColor,
        underline: const SizedBox.shrink(),
        onChanged: (Color? color) {
          if (color != null) {
            setState(() {
              selectedColor = color;
            });
          }
        },
        items: kColors.map<DropdownMenuItem<Color>>((Color color) {
          return DropdownMenuItem<Color>(
            value: color,
            child: Row(
              children: [
                SizedBox(width: 16.w),
                Container(
                  height: 34.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(18.r)),
                ),
                SizedBox(width: 10.w),
                Text(colorNames[color] ?? 'Unknown',
                    style:
                        TextStyles.textstyle14.copyWith(color: Colors.black54)),
                SizedBox(
                  width: 130.w,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}



// class ColorsListView extends StatefulWidget {
//   const ColorsListView({super.key});

//   @override
//   State<ColorsListView> createState() => _ColorsListViewState();
// }

// class _ColorsListViewState extends State<ColorsListView> {
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 38 * 2.h,
//       child: ListView.builder(
//         itemCount: kColors.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.symmetric(horizontal: 6.w),
//             child: GestureDetector(
//               onTap: () {
//                 currentIndex = index;
//                 // BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
//                 setState(() {});
//               },
//               child: ColorItem(
//                 color: kColors[index],
//                 isActive: currentIndex == index,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class ColorItem extends StatelessWidget {
//   const ColorItem({super.key, required this.isActive, required this.color});

//   final bool isActive;

//   final Color color;
//   @override
//   Widget build(BuildContext context) {
//     return isActive
//         ? CircleAvatar(
//             radius: 38.r,
//             backgroundColor: Colors.white,
//             child: CircleAvatar(
//               radius: 34.r,
//               backgroundColor: color,
//             ),
//           )
//         : CircleAvatar(
//             radius: 38.r,
//             backgroundColor: color,
//           );
//   }
// }
