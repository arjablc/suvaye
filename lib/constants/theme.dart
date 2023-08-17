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
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      selectedItemColor: Color(0xff6941C6),
      backgroundColor: Colors.white,
    ),
  );
//* Never mind this...
  // static ThemeData darkTheme = ThemeData(
  //   colorScheme: const ColorScheme.dark(
  //     onPrimaryContainer: Color.fromARGB(255, 46, 69, 56),
  //   ),
  //   scaffoldBackgroundColor: Colors.black,
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: Colors.black,
  //     elevation: 0,
  //     centerTitle: false,
  //     foregroundColor: Colors.white,
  //   ),
  //   textTheme: const TextTheme(
  //     titleSmall: TextStyle(
  //         color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
  //     titleMedium: TextStyle(
  //         fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
  //     titleLarge: TextStyle(
  //         fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
  //     displayMedium: TextStyle(color: Colors.white, fontSize: 20),
  //   ),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     elevation: 0,
  //     selectedLabelStyle: TextStyle(fontSize: 12),
  //     unselectedLabelStyle: TextStyle(fontSize: 12),
  //     selectedItemColor: Color(0xff6941C6),
  //     backgroundColor: Colors.black,
  //   ),
  // );
}
