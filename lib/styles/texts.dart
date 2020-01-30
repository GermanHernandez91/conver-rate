import 'package:flutter/material.dart';

abstract class Texts {
  static TextStyle headline = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    letterSpacing: 1.5,
    color: Colors.blueGrey,
  );

  static TextStyle headlineDark = headline.copyWith(
    color: Colors.white,
  );
}
