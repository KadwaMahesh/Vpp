import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpp/screens/app_theme.dart';
import 'package:vpp/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Victoria Petfood Processors",
      theme: ThemeData(fontFamily: 'Inter'),
      darkTheme: Themes().darkTheme,
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}
