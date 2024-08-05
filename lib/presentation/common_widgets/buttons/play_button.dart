import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_fit/presentation/screens/main_screen/main_state.dart';

import '../../theme/gradients.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.find<MainState>().setPlayVideo();
      },
      child: Container(
        width: 125,
        decoration: const BoxDecoration(
          color: Color(0xff4F3DBD),
          shape: BoxShape.circle,
          gradient: Gradients.playButtonGradient,
          boxShadow: [
            BoxShadow(
                color: Color(0xff5A3CBE), blurRadius: 30, offset: Offset(0, 4))
          ],
        ),
        child: Container(
          width: 119,
          margin: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            color: Color(0xff4F3DBD),
            shape: BoxShape.circle,
            gradient: Gradients.playButtonInnerGradient,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 7, left: 10),
              child: Image.asset(
                'assets/icons/icon_play.png',
                width: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
