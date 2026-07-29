import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pagebackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(289),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.buttonColor,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 16, top: 10, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Ready to make a request?',
                      style: AppTextStyle.heading2.copyWith(
                        color: Color(0xFAEFF4F1),
                      ),
                      textAlign: TextAlign.center,
                    ),
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
