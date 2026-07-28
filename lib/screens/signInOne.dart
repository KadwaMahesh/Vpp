import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/screens/signInMobile.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/textField.dart';
import 'package:vpp/widgets/text_button.dart';

class SignInOne extends StatefulWidget {
  const SignInOne({super.key});

  @override
  State<SignInOne> createState() => _SignInOneState();
}

class _SignInOneState extends State<SignInOne> {
  final TextEditingController _emailController = TextEditingController();
  bool isButtonEnabled = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 101),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: AppColor.buttonText,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "VPP",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: AppColor.buttonColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Victorian Petfood Processors",
                      style: AppTextStyle.heading2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Enter your email or mobile number. If you don’t have an account we’ll create one.",
                      style: AppTextStyle.heading1,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    TextFromField(
                      controller: _emailController,
                      borderColor: AppColor.border,
                      hintText: "Email or mobile",
                      focusBorder: AppColor.buttonText,
                      labelText: "Email or mobile",
                    ),
                    SizedBox(height: 12),
                    CustomButton(
                      buttonText: "Next",
                      onPressed: () {
                        Get.to(
                          () => SignInMobile(
                            emailOrMobile: _emailController.text,
                          ),
                        );
                        // Handle button press
                      },
                      backgroundColor: AppColor.buttonColor,
                    ),
                    SizedBox(height: 12),
                    Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColor.secondary,
                          ),
                        ),
                        Text("Or", style: TextStyle(color: AppColor.secondary)),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColor.secondary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    if (!isButtonEnabled)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isButtonEnabled = !isButtonEnabled;
                          });
                        },
                        child: SizedBox(
                          height: 52,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Sign in with socials",
                              style: AppTextStyle.heading3,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    if (isButtonEnabled)
                      Column(
                        spacing: 12,
                        children: [
                          TextButtonOne(
                            buttonText: "Continue with Google",
                            onPressed: () {},
                            backgroundColor: AppColor.white,
                            borderColor: AppColor.buttonBorder,
                            imagePath: "assets/images/logo google.png",
                          ),
                          TextButtonOne(
                            buttonText: "Continue with Facebook",
                            onPressed: () {},
                            backgroundColor: AppColor.white,
                            borderColor: AppColor.buttonBorder,
                            imagePath: "assets/images/facebook.png",
                          ),
                          TextButtonOne(
                            buttonText: "Continue with Apple",
                            onPressed: () {},
                            backgroundColor: AppColor.white,
                            borderColor: AppColor.buttonBorder,
                            imagePath: "assets/images/applelogo.png",
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: AppColor.primary,
                    ),
                    children: [
                      const TextSpan(text: "By continuing you agree to our "),
                      const TextSpan(
                        text: "terms of service ",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(text: "and "),
                      const TextSpan(
                        text: "privacy policy",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
