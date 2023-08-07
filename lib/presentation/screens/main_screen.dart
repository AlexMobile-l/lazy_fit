import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/common_widgets/custom_navigation_bar.dart';
import 'package:lazy_fit/presentation/common_widgets/foot.dart';
import 'package:lazy_fit/presentation/common_widgets/header.dart';
import 'package:lazy_fit/presentation/theme/gradients.dart';
import 'package:lazy_fit/states/main_state.dart';
import 'package:lazy_fit/states/splash_state.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../common_widgets/play_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPlayerController =
        VideoPlayerController.asset('assets/foot_video.mp4');

    return Material(
      child: Container(
        decoration: const BoxDecoration(gradient: Gradients.mainBGGradient),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Header(title: 'Lazy Fit', backButtonEnabled: false),
              FutureBuilder(
                  future: context
                      .read<MainState>()
                      .setController(videoPlayerController),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Container();
                    return Foot(videoPlayerController);
                  }),
              const PlayWidget(),
              const CustomNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
