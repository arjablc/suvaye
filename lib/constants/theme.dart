import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData theme = ThemeData(
    colorScheme: const ColorScheme.light(
      onPrimaryContainer: Color(0xffecfdf3),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      foregroundColor: Colors.black,
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(color: Colors.black, fontSize: 20),
    ),
  );
}
