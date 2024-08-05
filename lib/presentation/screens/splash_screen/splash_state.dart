import 'package:get/get.dart';
import '../../../repository/storage.dart';

class SplashState extends GetxController {
  bool wasFirstEntryInApp() => Storage.getBool(Storage.keyFirstEntry) ?? false;

  void setFirstEntry() {
    Storage.setBool(Storage.keyFirstEntry, true);
  }
}
