import 'package:flutter/material.dart';

class SplashState extends ChangeNotifier {
  bool firstEntry = true;
  SplashState();

  void setFirstEntry() {
    firstEntry = false;
    notifyListeners();
    print('firstEntry = $firstEntry');
  }
}
