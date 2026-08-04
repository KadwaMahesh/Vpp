import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:vpp/views/personalInfo2.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/progressBar.dart';
import 'package:vpp/widgets/textField.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

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
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Personal details',
                      style: AppTextStyle.heading2,
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    LinearProgressBar(value: 0.3),
                    SizedBox(height: 16),
                    Text(
                      'Please enter your details so we can create a personalised account. ',
                      style: AppTextStyle.heading1,
                    ),
                    SizedBox(height: 12),
                    TextFromField(
                      borderColor: AppColor.border,
                      hintText: 'First name',
                      focusBorder: AppColor.buttonText,
                      labelText: 'First name',
                      controller: _firstNameController,
                    ),
                    SizedBox(height: 12),
                    TextFromField(
                      borderColor: AppColor.border,
                      hintText: 'Last name',
                      focusBorder: AppColor.buttonText,
                      labelText: 'Last name',
                      controller: _lastNameController,
                    ),
                    SizedBox(height: 12),
                    TextFromField(
                      borderColor: AppColor.border,
                      hintText: 'Contact number',
                      focusBorder: AppColor.buttonText,
                      labelText: 'Contact number',
                      controller: _numberController,
                    ),
                  ],
                ),
              ),
              CustomButton(
                buttonText: 'Next',
                onPressed: () {
                  Get.to(() => PersonalInfoTwo());
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
