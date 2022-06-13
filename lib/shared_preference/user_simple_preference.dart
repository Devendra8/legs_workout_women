import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static late SharedPreferences _preferences;

  static const _keyUsername = 'username';
  static const _keyUserAge = 'userage';
  static const _keyUserHeight = 'userheight';
  static const _keyUserWeight = 'userweight';

  // static const _keyWaterReminder = [];
  // static List<String> _keyWaterReminder = [];

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setUsername(String username) async =>
      await _preferences.setString(_keyUsername, username);

  static String? getUsername() => _preferences.getString(_keyUsername);

  static Future setUserage(String userage) async =>
      await _preferences.setString(_keyUserAge, userage);

  static String? getUserage() => _preferences.getString(_keyUserAge);

  static Future setUserheight(String userheight) async =>
      await _preferences.setString(_keyUserHeight, userheight);

  static String? getUserheight() => _preferences.getString(_keyUserHeight);

  static Future setUserweight(String userweight) async =>
      await _preferences.setString(_keyUserWeight, userweight);

  static String? getUserweight() => _preferences.getString(_keyUserWeight);

  static Future Setbool(bool saved) async =>
      await _preferences.setBool("saved1", false);

  static Future SetWaterNotification(bool isSwitched) async =>
      await _preferences.setBool("waterNotification", isSwitched);

  static bool? getWaterNotification() =>
      _preferences.getBool("waterNotification");

  static Future setBooleanValue(String key, bool value) async {
    await _preferences.setBool(key, value);
  }

  static Future<bool> getBooleanValue(String key) async {
    return _preferences.getBool(key) ?? false;
  }
}
