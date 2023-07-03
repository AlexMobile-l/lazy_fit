import 'package:flutter/material.dart';

import '../main.dart';

class SplashState extends ChangeNotifier {
  static const _keyFirstEntry = "SplashState._keyFirstEntry";
  bool wasFirstEntryInApp() =>
      sharedPreferences.getBool(_keyFirstEntry) ?? false;

  SplashState();

  void setFirstEntry() {
    sharedPreferences.setBool(_keyFirstEntry, true);
    notifyListeners();
  }
}
