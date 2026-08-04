import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vpp/views/stockType.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/customAppBar.dart';
import 'package:vpp/widgets/progressBar.dart';

class PicUpLocation extends StatelessWidget {
  const PicUpLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,

      appBar: CustomAppBar(
        title: 'Pick up location',
        onBack: () {
          Navigator.pop(context);
        },
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Pick up will occur before 4pm on the day selected',
                      style: AppTextStyle.heading1,
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              CustomButton(
                buttonText: 'Next',
                onPressed: () {},
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
