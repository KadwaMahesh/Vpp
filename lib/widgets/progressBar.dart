import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_color.dart';

class LinearProgressBar extends StatelessWidget {
  const LinearProgressBar({super.key, required this.value});
  final double value;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      minHeight: 8,
      color: AppColor.progressBar,
      backgroundColor: AppColor.border,
      borderRadius: BorderRadius.circular(99),
    );
  }
}
