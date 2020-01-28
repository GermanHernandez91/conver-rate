import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeType { light, dark }

class DeviceProvider with ChangeNotifier {
  ThemeType _currentTheme = ThemeType.light;

  ThemeType get currentTheme => _currentTheme;

  void setCurrentMode(String theme) {
    if (theme == "light") {
      _currentTheme = ThemeType.light;
    } else {
      _currentTheme = ThemeType.dark;
    }

    notifyListeners();
  }

  Future<void> changeTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (_currentTheme == ThemeType.light) {
      prefs.setString("currentTheme", "dark");
    } else {
      prefs.setString("currentTheme", "light");
    }

    setCurrentMode(prefs.getString("currentTheme"));
  }
}
