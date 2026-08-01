import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:vpp/screens/picUpDate.dart';
import 'package:vpp/screens/settings.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(259),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.buttonColor,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 16, top: 10, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFAFFFFFF).withOpacity(0.1),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Get.to(() => SettingsPage());
                          },
                          icon: const Icon(
                            Icons.settings,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 28),
                  Text(
                    'Ready to make a request?',
                    style: AppTextStyle.heading2.copyWith(
                      color: Color(0xFAEFF4F1),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Start your request for livestock collection ',
                    style: AppTextStyle.heading1.copyWith(
                      color: Color(0xFAEFF4F1),
                    ),
                  ),
                  SizedBox(height: 24),
                  CustomButton(
                    buttonText: 'Start Request',
                    onPressed: () {
                      Get.to(() => PicUpDate());
                    },
                    backgroundColor: AppColor.buttonText,
                    textColor: AppColor.buttonColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(child: Column()),
    );
  }
}
