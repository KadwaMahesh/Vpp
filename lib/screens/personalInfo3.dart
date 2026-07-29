import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:vpp/screens/homePage.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/progressBar.dart';
import 'package:vpp/widgets/textField.dart';

class PersonalInfoThree extends StatefulWidget {
  const PersonalInfoThree({super.key});

  @override
  State<PersonalInfoThree> createState() => _PersonalInfoThreeState();
}

class _PersonalInfoThreeState extends State<PersonalInfoThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(112),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.pagebackground,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 2, top: 18, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => HomePage());
                        },
                        child: Text('Skip', style: AppTextStyle.heading1),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Bank Details', style: AppTextStyle.heading2),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    LinearProgressBar(value: 0.7),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Set up your bank account with [Payment Gateway] to easily send and receive payments.',
                        style: AppTextStyle.heading1,
                      ),
                    ),
                    SizedBox(height: 12),
                    CustomButton(
                      buttonText: 'Link account',
                      onPressed: () {},
                      backgroundColor: AppColor.buttonColor,
                    ),
                  ],
                ),
              ),
              CustomButton(
                buttonText: 'Next',
                onPressed: () {
                  Get.to(() => HomePage());
                },
                backgroundColor: AppColor.buttonColor,
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
