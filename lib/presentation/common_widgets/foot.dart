import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Foot extends StatelessWidget {
  final VideoPlayerController videoController;
  const Foot(this.videoController, {super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      child: AspectRatio(
        aspectRatio: 1,
        child: VideoPlayer(videoController),
      ),
    );
  }
}
