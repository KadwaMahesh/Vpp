import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_color.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle textHeading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    fontFamily: 'Work Sans',
    color: AppColor.buttonColor,
  );

  static const TextStyle heading1 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: AppColor.primary,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 22,
    fontFamily: 'Work Sans',
    fontWeight: FontWeight.w700,
    color: AppColor.primary,
  );
  static const TextStyle onboardHeading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColor.white,
  );
  static const TextStyle buttonHeading = TextStyle(
    fontSize: 15,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    color: AppColor.buttonText,
  );
  static const TextStyle heading3 = TextStyle(
    fontSize: 15,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    color: AppColor.black,
  );
}
