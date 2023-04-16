import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashState extends ChangeNotifier {
  late final SharedPreferences _prefs;
  bool firstEntry = true;
  SplashState() {
    init();
  }
  void init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  void setFirstEntry() {
    firstEntry = false;
    notifyListeners();
    print('firstEntry = $firstEntry');
  }
}
