import 'package:flutter/material.dart';

abstract class Navigation {
  static AppBarTheme appLightBarTheme = AppBarTheme(
    brightness: Brightness.light,
    color: Colors.white,
    elevation: 0,
    textTheme: TextTheme(
      title: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        letterSpacing: 1.5,
        color: Colors.blueGrey,
      ),
    ),
  );

  static AppBarTheme appDarkBarTheme = appLightBarTheme.copyWith(
    brightness: Brightness.dark,
    color: Colors.black87,
    textTheme: TextTheme(
      title: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        letterSpacing: 1.5,
        color: Colors.white,
      ),
    ),
  );
}
