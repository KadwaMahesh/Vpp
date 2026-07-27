import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpp/screens/signInOne.dart';
import 'package:vpp/widgets/Dot.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';

class OnbordingTwo extends StatelessWidget {
  const OnbordingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Image.asset(
              "assets/images/Feature showcase 01.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.transparent,
                  AppColor.transparent,
                  AppColor.black54,
                  AppColor.black,
                ],
                stops: [0.0, 0.55, 0.85, 1.0],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Track requests',
                    style: AppTextStyle.onboardHeading,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Keep track on your requests through the VPP app",
                    style: TextStyle(fontSize: 17, color: AppColor.background),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 41),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.to(() => const SignInOne());
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColor.background,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Dot(height: 8, width: 8, color: AppColor.background),
                          const SizedBox(width: 4), // 4px horizontal space
                          Dot(
                            height: 8,
                            width: 16,
                            color: AppColor.buttonColor,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const SignInOne());
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColor.buttonColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 43),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
