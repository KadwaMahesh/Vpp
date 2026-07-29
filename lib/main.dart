import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vpp/screens/app_theme.dart';
import 'package:vpp/screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://gsbqtfrhwsbbhnndsqzl.supabase.co',
    publishableKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdzYnF0ZnJod3NiYmhubmRzcXpsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODI0OTM3ODMsImV4cCI6MjA5ODA2OTc4M30.nKE_50cwdrMOZtCP9KCivQu45eQFWqZSO-roBbFYkfE',
  );
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
