import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MainState extends ChangeNotifier {
  late VideoPlayerController videoPlayerController;

  bool playVideo = false;

  MainState() {
    videoPlayerController.initialize();
  }

  void setController(VideoPlayerController controller) {
    videoPlayerController = controller;
    videoPlayerController.setLooping(true);
    // videoPlayerController.initialize();
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
