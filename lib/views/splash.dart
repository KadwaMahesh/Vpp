import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpp/views/onbording.dart';
import 'package:vpp/widgets/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const PageViewExample());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.buttonText,
        child: const Center(
          child: Text(
            "VPP",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: AppColor.buttonColor,
            ),
          ),
        ),
      ),
    );
  }
}
