import 'package:bin_omaira_motors/core/AppStorage.dart';
import 'package:bin_omaira_motors/features/on_bording/widgets/next_bording_button.dart';
import 'package:bin_omaira_motors/features/on_bording/models/onbording_model.dart';
import 'package:bin_omaira_motors/features/on_bording/widgets/bording_item.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  var bordingController = PageController();
  bool isLastScreen = false;
  int currentIndex = 0;
  @override
  void initState() {
    AppStorage.cacheOnBoarding(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: PageView.builder(
              controller: bordingController,
              onPageChanged: (int index) {
                currentIndex = index;
                if (index == onbordingItems.length - 1) {
                  setState(() {
                    isLastScreen = true;
                  });
                } else {
                  setState(() {
                    isLastScreen = false;
                  });
                }
              },
              itemCount: onbordingItems.length,
              itemBuilder: (context, index) => buildBordingItem(
                  onbordingItems[index],
                  currentIndex: currentIndex),
            ),
          ),
          NextBordingButton(
              isLastScreen: isLastScreen,
              bordingController: bordingController,
              currentIndex: currentIndex),
        ],
      ),
    );
  }
}
