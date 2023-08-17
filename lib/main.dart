import 'package:flutter/material.dart';

import 'constants/theme.dart';
import 'views/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: CustomTheme.theme,
      // darkTheme: CustomTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePageView(),
    );
  }
}
