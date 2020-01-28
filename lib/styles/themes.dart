import 'package:conver_rate/styles/navigation.dart';
import 'package:flutter/material.dart';

abstract class Themes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: Colors.indigoAccent,
    appBarTheme: Navigation.appLightBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColorDark: Colors.black87,
    accentColor: Colors.indigoAccent,
    appBarTheme: Navigation.appDarkBarTheme,
  );
}
