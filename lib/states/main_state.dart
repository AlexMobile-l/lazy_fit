import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MainState extends ChangeNotifier {
  late VideoPlayerController videoPlayerController;

  bool playVideo = false;

  Future<bool> setController(VideoPlayerController controller) async {
    videoPlayerController = controller;
    await videoPlayerController.initialize();
    videoPlayerController.setLooping(true);
    return true;
  }

  void setPlayVideo() {
    if (playVideo) {
      playVideo = false;
      pause();
    } else {
      playVideo = true;
      play();
    }
  }

  void play() {
    videoPlayerController.play();
  }

  void pause() {
    videoPlayerController.pause();
  }
}
