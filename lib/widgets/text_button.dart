import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_color.dart';

class TextButtonOne extends StatefulWidget {
  const TextButtonOne({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.backgroundColor,
    required this.borderColor,
    required this.imagePath,
  });

  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final String imagePath;

  @override
  State<TextButtonOne> createState() => _TextButtonOneState();
}

class _TextButtonOneState extends State<TextButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: widget.borderColor, width: 1.0),
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        child: Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.imagePath, height: 18, width: 18),
            Text(
              widget.buttonText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
