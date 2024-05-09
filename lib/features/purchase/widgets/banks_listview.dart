import 'package:bin_omaira_motors/features/purchase/widgets/bank_container_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BanksListView extends StatefulWidget {
  const BanksListView({super.key});

  @override
  State<BanksListView> createState() => _BanksListViewState();
}

class _BanksListViewState extends State<BanksListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => BankContainerItem(
                isSelected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
          separatorBuilder: (context, index) => SizedBox(width: 16.h),
          itemCount: 7),
    );
  }
}
