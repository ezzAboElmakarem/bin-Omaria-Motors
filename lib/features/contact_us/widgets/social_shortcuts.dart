import 'package:bin_omaira_motors/features/contact_us/widgets/shortcut_item.dart';
import 'package:bin_omaira_motors/helper/assets.dart';
import 'package:bin_omaira_motors/helper/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialShortcuts extends StatelessWidget {
  const SocialShortcuts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("find_us".tr(), style: TextStyles.textstyle14),
        SizedBox(
          height: 24.h,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialShortcutItem(
              iconUrl: AssetsData.facebook,
            ),
            SocialShortcutItem(
              iconUrl: AssetsData.twitter,
            ),
            SocialShortcutItem(
              iconUrl: AssetsData.insta,
            ),
            SocialShortcutItem(
              iconUrl: AssetsData.whatsUp,
            ),
            SocialShortcutItem(
              iconUrl: AssetsData.snap,
            ),
            SocialShortcutItem(
              iconUrl: AssetsData.youtube,
            ),
            SocialShortcutItem(
              iconUrl: AssetsData.linkedin,
            ),
          ],
        ),
        SizedBox(
          height: 32.h,
        ),
        Divider(
          color: Colors.grey.withOpacity(0.2),
        ),
      ],
    );
  }
}
