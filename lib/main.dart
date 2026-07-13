import 'package:flutter/material.dart';
import 'package:vpp/screens/app_theme.dart';
import 'package:vpp/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Victoria Pe tfood Processors",
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}
