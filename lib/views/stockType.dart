import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vpp/views/stockQuantity.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/progressBar.dart';

class StockType extends StatelessWidget {
  const StockType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(135),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.pagebackground,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 12, top: 18, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: AppColor.buttonColor),
                  ),

                  Text('Select Stock Type', style: AppTextStyle.textHeading),
                  SizedBox(height: 8),
                  LinearProgressBar(value: 0.4),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(child: Column(children: [
                    
                  ],
                )),
              CustomButton(
                buttonText: 'Next',
                onPressed: () {
                  Get.to(() => StockQuantity());
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
