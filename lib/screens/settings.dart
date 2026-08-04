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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Setting ${index + 1}'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle setting item tap
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
