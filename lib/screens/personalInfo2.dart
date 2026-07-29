import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:vpp/screens/personalInfo3.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/progressBar.dart';
import 'package:vpp/widgets/textField.dart';

class PersonalInfoTwo extends StatefulWidget {
  const PersonalInfoTwo({super.key});

  @override
  State<PersonalInfoTwo> createState() => _PersonalInfoTwoState();
}

class _PersonalInfoTwoState extends State<PersonalInfoTwo> {
  final TextEditingController _farmLocation = TextEditingController();

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
                          Get.to(() => PersonalInfoThree());
                        },
                        child: Text('Skip', style: AppTextStyle.heading1),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Farm Location', style: AppTextStyle.heading2),
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
                    LinearProgressBar(value: 0.5),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Add your location.',
                        style: AppTextStyle.heading1,
                      ),
                    ),
                    SizedBox(height: 12),
                    TextFromField(
                      borderColor: AppColor.border,
                      hintText: 'Farm location',
                      focusBorder: AppColor.buttonText,
                      labelText: 'Farm location',
                      controller: _farmLocation,
                    ),
                  ],
                ),
              ),
              CustomButton(
                buttonText: 'Next',
                onPressed: () {
                  Get.to(() => PersonalInfoThree());
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
