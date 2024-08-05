import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static SharedPreferences? _storage;

  static String keyFirstEntry = 'keyFirstEntry';

  static String keySavedTheme = 'keySavedTheme';

  static Future<void> init() async {
    _storage ??= await SharedPreferences.getInstance();
  }

  static Future<void> setString(String key, String value) =>
      _storage!.setString(key, value);

  static String? getString(String key) => _storage!.getString(key);

  static Future<void> setBool(String key, bool value) =>
      _storage!.setBool(key, value);

  static bool? getBool(String key) => _storage!.getBool(key);

  static Future<void> setInt(String key, int value) =>
      _storage!.setInt(key, value);

  static int? getInt(String key) => _storage!.getInt(key);
}
