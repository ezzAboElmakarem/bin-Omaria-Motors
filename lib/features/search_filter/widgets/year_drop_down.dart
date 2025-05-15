import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YearDropdown extends StatefulWidget {
  const YearDropdown({Key? key}) : super(key: key);

  @override
  State<YearDropdown> createState() => _YearDropdownState();
}

class _YearDropdownState extends State<YearDropdown> {
  String selectedItem = DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    int currentYear = DateTime.now().year;
    List<String> years = List.generate(
        currentYear - 1990 + 1, (index) => (1990 + index).toString());

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: DropdownButton<String>(
        value: selectedItem,
        underline: const SizedBox.shrink(),
        onChanged: (String? year) {
          if (year != null) {
            setState(() {
              selectedItem = year;
            });
          }
        },
        items: years.map<DropdownMenuItem<String>>((String year) {
          return DropdownMenuItem<String>(
            value: year,
            child: Row(
              children: [
                SizedBox(width: 16.w),
                Text(year,
                    style:
                        TextStyles.textstyle14.copyWith(color: Colors.black54)),
                SizedBox(width: 222.w),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
