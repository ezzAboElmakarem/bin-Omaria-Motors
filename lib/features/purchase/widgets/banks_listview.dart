import 'package:bin_omaira_motors/features/purchase/widgets/bank_container_item.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:bin_omaira_motors/widgets/custom_dialog.dart';
import 'package:bin_omaira_motors/widgets/order_summary.dart';
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
      height: 126.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => BankContainerItem(
                isSelected: selectedIndex == index,
                onTap: () {
                  cutsomDialog(
                      context: context,
                      body: Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                          right: 24.w,
                          bottom: 24.h,
                          top: 16.h,
                        ),
                        child: Column(
                          children: [
                            // Align(
                            //   alignment: Alignment.centerRight,
                            //   child: IconButton(
                            //     onPressed: () {
                            //       RouteUtils.pop();
                            //     },
                            //     icon: const Icon(Icons.close),
                            //   ),
                            // ),
                            SizedBox(
                              height: 50.h,
                              width: 180.w,
                              child: Image.asset(
                                AssetsData.nationalBank,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              "National Commercial Bank",
                              style: TextStyles.textstyle16
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 40.h),
                            const PriceCell(
                              name: 'Account number',
                              price: 'XXXXXXXXXXXXXXXXX',
                              showDivider: true,
                            ),
                            const PriceCell(
                              name: 'IBAN',
                              price: 'XXXXXXXXXXXXXXXXX',
                              showDivider: false,
                            ),
                          ],
                        ),
                      ),
                      verticalPadding: 180.h);
                  //   context: context,
                  //   hasButton: false,
                  //   // hasTitle: false,
                  //   body: Padding(
                  //     padding: EdgeInsets.all(24.h),
                  //     child: Column(
                  //       children: [
                  //         // Align(
                  //         //   alignment: Alignment.centerRight,
                  //         //   child: IconButton(
                  //         //     onPressed: () {
                  //         //       RouteUtils.pop();
                  //         //     },
                  //         //     icon: const Icon(Icons.close),
                  //         //   ),
                  //         // ),
                  //         SizedBox(
                  //           height: 60.h,
                  //           width: 190.w,
                  //           child: Image.asset(
                  //             AssetsData.nationalBank,
                  //             fit: BoxFit.contain,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 8.h,
                  //         ),
                  //         Text(
                  //           "National Commercial Bank",
                  //           style: TextStyles.textstyle14
                  //               .copyWith(fontWeight: FontWeight.w400),
                  //         ),
                  //         SizedBox(height: 40.h),
                  //         const PriceCell(
                  //           name: 'Account number',
                  //           price: 'XXXXXXXXXXXXXXXXX',
                  //           showDivider: true,
                  //         ),
                  //         const PriceCell(
                  //           name: 'IBAN',
                  //           price: 'XXXXXXXXXXXXXXXXX',
                  //           showDivider: false,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );

                  // showDialog(
                  //   context: context,
                  //   builder: (context) =>
                  // Padding(
                  //     padding: EdgeInsets.all(24.h),
                  //     child: Column(
                  //       children: [
                  //         // Align(
                  //         //   alignment: Alignment.centerRight,
                  //         //   child: IconButton(
                  //         //     onPressed: () {
                  //         //       RouteUtils.pop();
                  //         //     },
                  //         //     icon: const Icon(Icons.close),
                  //         //   ),
                  //         // ),
                  //         SizedBox(
                  //           height: 60.h,
                  //           width: 190.w,
                  //           child: Image.asset(
                  //             AssetsData.nationalBank,
                  //             fit: BoxFit.contain,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 8.h,
                  //         ),
                  //         Text(
                  //           "National Commercial Bank",
                  //           style: TextStyles.textstyle14
                  //               .copyWith(fontWeight: FontWeight.w400),
                  //         ),
                  //         SizedBox(height: 40.h),
                  //         const PriceCell(
                  //           name: 'Account number',
                  //           price: 'XXXXXXXXXXXXXXXXX',
                  //           showDivider: true,
                  //         ),
                  //         const PriceCell(
                  //           name: 'IBAN',
                  //           price: 'XXXXXXXXXXXXXXXXX',
                  //           showDivider: false,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );

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
