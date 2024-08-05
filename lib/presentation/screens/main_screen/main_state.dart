import 'dart:async';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class MainState extends GetxController {
  late VideoPlayerController videoPlayerController;
  bool isPlaying = false;

  Future<bool> setController(VideoPlayerController controller) async {
    videoPlayerController = controller;
    await videoPlayerController.initialize();
    videoPlayerController.setLooping(true);
    return true;
  }

  void setPlayVideo() {
    isPlaying ? pauseVideo() : playVideo();
  }

  void pauseVideo() {
    isPlaying = false;
    videoPlayerController.pause();
  }

  void playVideo() {
    isPlaying = true;
    videoPlayerController.play();
  }
}
