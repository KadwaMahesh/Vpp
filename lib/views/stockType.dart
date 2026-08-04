import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vpp/views/stockQuantity.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/customAppBar.dart';
import 'package:vpp/widgets/progressBar.dart';

class StockType extends StatelessWidget {
  const StockType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,

      appBar: CustomAppBar(
        title: 'Select Stock Type',
        onBack: () {
          Navigator.pop(context);
        },
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
