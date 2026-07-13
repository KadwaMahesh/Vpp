import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    super.key,
    required this.height,
    required this.width,
    required this.color,
  });
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
