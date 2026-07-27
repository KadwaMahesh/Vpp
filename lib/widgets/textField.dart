import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_color.dart';

class TextFromField extends StatelessWidget {
  const TextFromField({
    super.key,
    required this.borderColor,
    required this.hintText,
    required this.focusBorder,
    required this.labelText,
    required this.controller,
  });

  final Color borderColor;
  final String hintText;
  final Color focusBorder;
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppColor.primary),
        labelText: labelText,
        labelStyle: TextStyle(color: AppColor.primary),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: focusBorder, width: 2),
        ),
      ),
    );
  }
}
