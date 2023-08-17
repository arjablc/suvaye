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
          displayMedium: TextStyle(color: Colors.black, fontSize: 25)));
}
