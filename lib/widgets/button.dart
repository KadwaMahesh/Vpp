import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_text_style.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.backgroundColor,
  });

  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          // padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: Text(widget.buttonText, style: AppTextStyle.buttonHeading),
      ),
    );
  }
}
