import 'package:conver_rate/styles/navigation.dart';
import 'package:conver_rate/styles/texts.dart';
import 'package:flutter/material.dart';

abstract class Themes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: Colors.indigoAccent,
    appBarTheme: Navigation.appLightBarTheme,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.indigoAccent,
        ),
      ),
    ),
    textTheme: TextTheme(
      headline: Texts.headline,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColorDark: Colors.black87,
    accentColor: Colors.indigoAccent,
    appBarTheme: Navigation.appDarkBarTheme,
    textTheme: TextTheme(
      headline: Texts.headlineDark,
    ),
  );
}
