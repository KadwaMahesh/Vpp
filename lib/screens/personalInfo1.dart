import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_text_style.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [Text('Personal details', style: AppTextStyle.heading2)],
        ),
      ),
    );
  }
}
