import 'package:flutter/material.dart';
import 'package:vpp/screens/app_color.dart';
import 'package:vpp/screens/app_text_style.dart';
import 'package:vpp/widgets/Dot.dart';

class OnbordingTwo extends StatelessWidget {
  const OnbordingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Feature showcase 01.png"),
            fit: BoxFit.cover,
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
                style: AppTextStyle.OnbordingHeading,
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
                    onPressed: () {},
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
                      Dot(height: 8, width: 16, color: AppColor.buttonColor),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
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
    );
  }
}
