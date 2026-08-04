import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vpp/views/picupLocation.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';
import 'package:vpp/widgets/button.dart';
import 'package:vpp/widgets/customAppBar.dart';
import 'package:vpp/widgets/progressBar.dart';

class StockQuantity extends StatelessWidget {
  const StockQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,

      appBar: CustomAppBar(
        title: 'Stock Quantity',
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
                  Get.to(() => PicUpLocation());
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
