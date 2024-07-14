import 'package:flutter/material.dart';

class SocialShortcutItem extends StatelessWidget {
  final String iconUrl;
  const SocialShortcutItem({
    super.key,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // final Uri twitterLaunchUri = Uri(
          //   path: linkData.data?[0].twitter ?? '',
          // );

          // launchUrl(twitterLaunchUri);
        },
        child: Image.asset(iconUrl));
  }
}
