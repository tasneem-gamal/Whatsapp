import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static Future<void> saveUid(String uid) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('uid', uid);
  }

  static Future<String?> getUid() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('uid');
  }

  static Future<void> clearUid() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('uid');
  }

  static Future<void> saveBaseUrl(String baseUrl) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('base_url', baseUrl);
  }

  static Future<String?> getBaseUrl() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('base_url');
  }

  static Future<void> clearBaseUrl() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('base_url');
  }

  static Future<void> saveStartDate(DateTime date) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('start_date', date.toIso8601String());
  }

  static Future<DateTime?> getStartDate() async {
    final prefs = await SharedPreferences.getInstance();
    final dateStr = prefs.getString('start_date');
    if (dateStr != null) {
      return DateTime.tryParse(dateStr);
    }
    return null;
  }


}
