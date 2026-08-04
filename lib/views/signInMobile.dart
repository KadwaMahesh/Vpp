import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:vpp/views/personalInfo1.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/otpPin.dart';

class SignInMobile extends StatefulWidget {
  const SignInMobile({super.key, required this.emailOrMobile});

  final String emailOrMobile;

  @override
  State<SignInMobile> createState() => _SignInMobileState();
}

class _SignInMobileState extends State<SignInMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.white,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Welcome Back', style: AppTextStyle.heading2),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter the code sent to ',
                      style: AppTextStyle.heading1,
                    ),
                    Text(widget.emailOrMobile, style: AppTextStyle.heading1),
                    SizedBox(height: 40),
                    OtpPinWidget(
                      onCompleted: (code) {
                        debugPrint("OTP: $code");
                      },
                    ),
                  ],
                ),
              ),
              CustomButton(
                buttonText: 'Next',
                onPressed: () {
                  Get.to(() => PersonalInfo());
                },
                backgroundColor: AppColor.buttonColor,
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Resend",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColor.progressBar,
                      fontFamily: 'Roboto Flex',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
