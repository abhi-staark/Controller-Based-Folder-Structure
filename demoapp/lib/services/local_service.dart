import 'package:shared_preferences/shared_preferences.dart';

/// This service handles local storage interactions (e.g., using SharedPreferences).
/// It is responsible for saving and retrieving key-value pairs from local storage.

class LocalService {
  /// Saves a key-value pair in local storage.
  Future<void> saveData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  /// Retrieves a value for a given key from local storage.
  Future<String?> getData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}
