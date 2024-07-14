import 'package:bin_omaira_motors/helper/colors_styles.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModelsDropdown extends StatefulWidget {
  const ModelsDropdown({Key? key}) : super(key: key);

  @override
  State<ModelsDropdown> createState() => _ColorDropdownState();
}

class _ColorDropdownState extends State<ModelsDropdown> {
  String selectedItem = carsModels[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: DropdownButton<String>(
        value: selectedItem,
        underline: const SizedBox.shrink(),
        onChanged: (String? color) {
          if (color != null) {
            setState(() {
              selectedItem = color;
            });
          }
        },
        items: carsModels.map<DropdownMenuItem<String>>((String model) {
          return DropdownMenuItem<String>(
            value: model,
            child: Row(
              children: [
                SizedBox(width: 16.w),
                Text(model,
                    style:
                        TextStyles.textstyle14.copyWith(color: Colors.black54)),
                SizedBox(width: 180.w),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
