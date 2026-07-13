import 'package:flutter/material.dart';
import 'package:vpp/screens/app_color.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle heading1 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: AppColor.primary,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColor.primary,
  );
  static const TextStyle OnbordingHeading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColor.background,
  );
}
