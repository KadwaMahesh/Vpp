import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.pagebackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.buttonColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Settings', style: AppTextStyle.textHeading),
      ),
    );
  }
}
